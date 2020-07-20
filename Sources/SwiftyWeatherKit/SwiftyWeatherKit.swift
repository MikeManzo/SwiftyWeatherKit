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
public protocol SWKDevice: Codable {
    var prettyString: String { get }
    var deviceID: String? { get }
}

/// Testing something
/*
public protocol SWKReportingDevice {
    var prettyString: String { get }
    var deviceID: String? { get }
}
*/

/// Service Status
public enum WeatherServiceStatus: Int {
    case NotReporting
    case Reporting
    case Error
}

/// Supported Service Types
public enum WeatherServiceType: Int {
    case Undefined
    case Ambient
}

extension WeatherServiceType: Codable {
    static func enumvValue(value: Int) -> WeatherServiceType {
        switch value {
        case 0 : return .Undefined
        case 1 : return .Ambient
        default: return .Undefined
        }
    }
    
    enum Key: CodingKey {
        case rawValue
    }

    enum CodingError: Error {
        case unknownValue
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: Key.self)

        let rawValue = try container.decode(Int.self, forKey: .rawValue)
        switch rawValue {
        case 0:
            self = .Undefined
        case 1:
            self = .Ambient
        default:
            throw CodingError.unknownValue
        }
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)

        switch self {
        case .Undefined:
            try container.encode(0, forKey: .rawValue)
        case .Ambient:
            try container.encode(1, forKey: .rawValue)
        }
    }
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
