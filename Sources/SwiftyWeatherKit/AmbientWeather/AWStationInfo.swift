//
//  AWStationInfo.swift
//  
//
//  Created by Mike Manzo on 5/10/20.
//

import Foundation

public class AWStationInfo: Codable {
    private let stationGeoLocation: AWStationGeolocation
    private let stationLocation: String?
    private let stationName: String?
    
    enum CodingKeys: String, CodingKey {
        case stationGeoLocation = "coords"
        case stationLocation = "location"
        case stationName = "name"
    }

    /// Return the user-defined name of the device (station)
    public var name: String? {
        get { return stationName }
    }
    
    /// Return the userdefined location of the device (station)
    public var location: String? {
        get { return stationLocation }
    }
    
    /// Return a AWStationGeolocation object
    public var geo: AWStationGeolocation {
        get { return stationGeoLocation }
    }
    
    ///
    /// Provides a simple way to "see" what ths device is reporting
    ///
    public var prettyString: String {
        let debugInfo = """
        Info:
        Name: \(name ?? "Unknown Name")
        Location: \(location ?? "Unknown Location")
        \(geo.prettyString)
        """
        return debugInfo
    }
    
    ///
    /// Empty init
    ///
    init () {
        stationLocation = nil
        stationName = nil
        stationGeoLocation = AWStationGeolocation()
    }
    
    ///
    /// Public & Codeable Initializer ... this creates the object and populates it w/ the JSON-derived decoer
    /// - Parameter decoder: JSON_Derived decoder
    /// - Throws: a decoding error if something has gone wrong
    ///
    required public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        do {
            stationLocation = try container.decodeIfPresent(String.self, forKey: .stationLocation)
            stationName = try container.decodeIfPresent(String.self, forKey: .stationName)
            stationGeoLocation = try container.decodeIfPresent(AWStationGeolocation.self, forKey: .stationGeoLocation) ?? AWStationGeolocation()
        } catch let error as DecodingError {
            throw error
        }
    }
}
