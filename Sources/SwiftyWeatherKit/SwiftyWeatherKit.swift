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

public protocol SWKDevice: CustomStringConvertible {
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
