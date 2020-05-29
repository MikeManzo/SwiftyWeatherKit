//
//  StationData+Pressure.swift
//  
//
//  Created by Mike Manzo on 5/11/20.
//

import Foundation

extension AWStationData {
    var PressureSensors: [SWKSensor] {
        let sensors: [SWKSensor?] = [PressureRelative, PressureAbsolute]
        return sensors.compactMap{ $0 }
    }
    
    var PressureRelative: SWKSensor? {
        if barometerRelativeInHg != nil {
            return SWKSensor(type: .Pressure, name: "Relative Pressure", sensorID: "baromrelin", measurement: barometerRelativeInHg!, unit: "inHg", desc: "Relative Pressure")
        } else {
            return nil
        }
    }
    
    var PressureAbsolute: SWKSensor? {
        if barometerAbsoluteInHg != nil {
            return SWKSensor(type: .Pressure, name: "Absolute Pressure", sensorID: "baromabsin", measurement: barometerAbsoluteInHg!, unit: "inHg", desc: "Absolute Pressure")
        } else {
            return nil
        }
    }
}
