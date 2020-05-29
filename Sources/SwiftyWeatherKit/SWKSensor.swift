//
//  SWKSensor.swift
//  
//
//  Created by Mike Manzo on 5/10/20.
//

import Foundation

/// Supported Service Types
public enum SWKSensorType {
    case Temperature
    case AirQuality
    case Pressure
    case Battery
    case Humidity
    case General
    case Rain
    case Wind
}

/// 
/// Base sensor descriptor for SwiftyWeatherKit
/// Generic descriptors:
/// - _description: What the sensor does
/// - _sensorID: Uniqe Identifier of of the sensor
/// - _unit: What the measurements are in (e.g., in, W, F, etc)
/// - _name: What do you want to call the sensor
/// - _value: Current measurement for the sensor
///
open class SWKSensor {
    private let _type: SWKSensorType
    private let _description: String
    private let _sensorID: String
    private let _unit: String
    private let _name: String
    private var _value: Any

    /// Return the value of the measurement for this sensor as reported by the API
    var measurement: Any {
        get {
            _value
        }
    }

    /// Return the user-defined name for this sensor
    var name: String {
        get {
            _name
        }
    }
    
    /// Return the api-defined ID for this sensor
    var sensorID: String {
        get {
            _sensorID
        }
    }
   
    /// Return the ap-defined default unit for this sensor
    var unit: String {
        get {
            _unit
        }
    }

    /// Return the user-defined description for this sensor
    var description: String {
        get {
            _description
        }
    }

    ///
    /// Provides a simple way to "see" what ths device is reporting
    ///
    var prettyString: String {
        get {
            if _unit != "None" {
                return String("\(_name): \(_value) \(_unit)")
            } else {
                return String("\(_name): \(_value)")
            }
        }
    }
    
    ///
    /// A compact way to progamatically represent a "sensor" as defined in the API docs
    /// - Parameters:
    ///   - type: sensor type (e.g.,  Temperature, AirQuality, Pressure, Battery, Humidty, General, Rain, Wind)
    ///   - name: user-defined name for the senor
    ///   - sensorID: api-defined JSON key for the sensor
    ///   - measurement: the current value the sensor is reporting
    ///   - unit: api-defined default unit
    ///   - desc: user-defined free-text description of what the sensor does and/or measures
    ///
    required public init (type: SWKSensorType, name: String, sensorID: String, measurement: Any, unit: String, desc: String) {
        _value = measurement
        _sensorID = sensorID
        _description = desc
        _name = name
        _unit = unit
        _type = type
    }
    
    ///
    /// Progmatic way to just upate the value of the sensie.  Not sure if this will ever be used
    /// - Parameter measurement: the value for the measurement (e.g., Int, Double, String, Float, etc.)
    ///
    open func update(measurement: Any?) {
        if measurement != nil {
            _value = measurement!
        }
    }
}
