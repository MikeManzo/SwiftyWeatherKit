//
//  AWSensor.swift
//  
//
//  Created by Mike Manzo on 5/30/20.
//

import Foundation

open class AWSensor: SWKSensor {
    ///
    /// Provides a simple way to "see" what ths device is reporting
    ///
    open override var prettyString: String {
        guard let measure = _value as? Measurement else {
            return String("\(_name): \(_value)")
        }
        let formatter = MeasurementFormatter()
        formatter.unitOptions = .providedUnit
        formatter.numberFormatter.maximumFractionDigits = 1
        return String("\(_name): \(formatter.string(from: measure)) \(_unit)")
    }

    ///
    /// A compact way to progamatically represent an AmbientWeather Sensor as defined in the API docs
    /// - Parameters:
    ///     - _value: We are taking advantage of the fact that some of the AW sensors can have units that are convertible.  Those that are fixed - are fixed.
    ///
    required public init (type: SWKSensorType, name: String, sensorID: String, measurement: Any, unit: String, desc: String) {
        super.init(type: type, name: name, sensorID: sensorID, measurement: measurement, unit: unit, desc: desc)
        
        switch type {
        case .Pressure:
            _value = Measurement(value: Double(measurement as! Float), unit: UnitPressure.inchesOfMercury)
        case .Temperature:
            _value = Measurement(value: Double(measurement as! Float), unit: UnitTemperature.fahrenheit)
        case .AirQuality:
            _value = Measurement(value: Double(measurement as! Float), unit: Unit(symbol: "µg/m^3"))
        case .WindSpeed:
            _value = Measurement(value: Double(measurement as! Float), unit: UnitSpeed.milesPerHour)
        case .RainRate:
            _value = Measurement(value: Double(measurement as! Float) , unit: Unit(symbol: "in/hr"))
        case .Rain:
            _value = Measurement(value: Double(measurement as! Float) , unit: UnitLength.inches)
        case .Humidity:
            _value = Measurement(value: Double(measurement as! Int), unit: Unit(symbol: "%"))
        case .WindDirection:
            _value = Measurement(value: Double(measurement as! Int), unit: UnitAngle.degrees)
        case .Radiation, .Battery, .RainDate, .General: // Unit-less
            break
        }
    }
}