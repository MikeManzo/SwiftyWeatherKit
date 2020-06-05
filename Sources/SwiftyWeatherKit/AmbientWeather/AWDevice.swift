//
//  AWDevice.swift
//  
//
//  Created by Mike Manzo on 5/17/20.
//

import Foundation

///
/// [Ambient Weather Device Specification](https://github.com/ambient-weather/api-docs/wiki/Device-Data-Specs)
///
open class AWDevice: SWKDevice, Codable {
    private let info: AWStationInfo?
    private let macAddress: String?
    let lastData: AWStationData?
    
    enum CodingKeys: String, CodingKey {
        case macAddress = "macAddress"
        case lastData = "lastData"
        case info = "info"
    }

    /// Return the MAC Address of the device as reported by AmbientWeather.net
    public var deviceID: String? {
        return macAddress
    }
    
    /// Return the station info.  Note, this returns all info the *user* has entered for the device
    public var information: AWStationInfo? {
        return info
    }
    
   /// Returns an array containing all sensors that are reporting
    public var sensors: [AWSensor] {
        return lastData!.availableSensors as! [AWSensor]
    }
    
    /// Returns an array containing of reporting sensor types
    public var availabeSensorTypes: [SWKSensorType] {
        return lastData!.availabeSensorTypes
    }
    
    ///
    /// Provides a simple way to "see" what ths device is reporting
    ///
    public var prettyString: String {
        let debugInfo = """
        MAC Address: \(macAddress!)
        \(info?.prettyString ?? "INFO: Error")
        """
        return debugInfo
    }
    
    ///
    /// Public & Codeable Initializer ... this creates the object and populates it w/ the JSON-derived decoer
    /// - Parameter decoder: JSON_Derived decoder
    /// - Throws: a decoding error if something has gone wrong
    ///
    required public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        do {
            macAddress = try container.decodeIfPresent(String.self, forKey: .macAddress) ?? "XXX"
            lastData = try container.decode(AWStationData.self, forKey: .lastData)
            info = try container.decode(AWStationInfo.self, forKey: .info)
        } catch let error as DecodingError {
            throw error
        }
    }
}
