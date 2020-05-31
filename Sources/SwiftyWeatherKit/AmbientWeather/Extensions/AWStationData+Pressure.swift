//
//  StationData+Pressure.swift
//  
//
//  Created by Mike Manzo on 5/11/20.
//

import Foundation

extension AWStationData {
    var PressureSensors: [AWSensor] {
        let sensors: [AWSensor?] = [PressureRelative, PressureAbsolute]
        return sensors.compactMap{ $0 }
    }
    
    var PressureRelative: AWSensor? {
        if barometerRelativeInHg != nil {
            return AWSensor(type: .Pressure, name: "Relative Pressure", sensorID: "baromrelin", measurement: barometerRelativeInHg!, unit: "inHg", desc: "Relative Pressure")
        } else {
            return nil
        }
    }
    
    var PressureAbsolute: AWSensor? {
        if barometerAbsoluteInHg != nil {
            return AWSensor(type: .Pressure, name: "Absolute Pressure", sensorID: "baromabsin", measurement: barometerAbsoluteInHg!, unit: "inHg", desc: "Absolute Pressure")
        } else {
            return nil
        }
    }
}
