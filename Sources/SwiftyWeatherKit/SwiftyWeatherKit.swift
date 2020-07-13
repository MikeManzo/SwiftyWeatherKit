//
//  SwiftWeatherKit.swift
//
//
//  Created by Mike Manzo on 5/10/20.
//

import Alamofire
import Foundation

/// Platform protocol for weather platforms to be added
public protocol WeatherPlatform {
    func getHistoricalMeasurements(uniqueID: String?, count: Int, completionHandler: @escaping ([SWKDeviceData]?) -> Void)
    func getLastMeasurement(uniqueID: String?, completionHandler: @escaping (SWKDeviceData?) -> Void)
    func setupService(completionHandler: @escaping (WeatherServiceStatus) -> Void)
    func description(uniqueID: String)

    var  reportingDevices: [[String: SWKDevice]] { get }
}

public protocol SWKDeviceData {
    var prettyString: String { get }
    var availableSensors: [SWKSensor] { get }
}

/// Testing something
public protocol SWKDevice: NSObject, Codable {
    var prettyString: String { get }
    var deviceID: String? { get }
}

/// Testing something

public protocol SWKReportingDevice {
    var prettyString: String { get }
    var deviceID: String? { get }
}

/// Service Status
public enum WeatherServiceStatus {
    case NotReporting
    case Reporting
    case Error
}

/// Supported Service Types
public enum WeatherServiceType {
    case Undefined
    case Ambient
}

/*
/// Abstract base class for weather devices
open class SWKDevice: Codable, SWKReportingDevice {
    public var deviceID: String? {
        return nil
    }

    public var prettyString: String {
        return ""
    }
    
    required public init(from decoder: Decoder) throws {
        // Empty
    }
    
    public func encode(to encoder: Encoder) throws {
        // empty
    }
}*/

/// Weather Factory
public class SwiftyWeatherKit {
    public static let description = "Swifty Weather Kit"
    public static var WeatherFactory = SwiftyWeatherKit()
    
    open class func shared() -> SwiftyWeatherKit {
        return WeatherFactory
    }
    
    /// Initialize the desired service using a platform model
    /// - Parameters:
    ///   - weatherType: desired weather service
    ///   - apiKeys: key(s) that are required to initialize the service; it's up to the resulting service to handle the order and # of keys.
    /// - Returns: a fully formed weather platform
    public func getService(WeatherServiceType weatherType: WeatherServiceType, WeatherAPI api: [String]) -> WeatherPlatform? {
        switch weatherType {
            case .Ambient:
                return AmbientWeather(apiKeys: api)
            case .Undefined:
                return nil
        }
    }
}
