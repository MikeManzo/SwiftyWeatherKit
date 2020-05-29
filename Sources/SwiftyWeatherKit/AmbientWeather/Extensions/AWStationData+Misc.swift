//
//  StationData+Misc.swift
//  
//
//  Created by Mike Manzo on 5/11/20.
//

import Foundation

extension AWStationData {
    var MiscSensors: [SWKSensor] {
        let sensors: [SWKSensor?] = [DateUTC, Timezone]
        return sensors.compactMap{ $0 }
    }
    
    var DateUTC: SWKSensor? {
        if dateUTC != nil {
            return SWKSensor(type: .General, name: "Date", sensorID: "dateutc", measurement: dateUTC!, unit: "ms", desc: "Date, from 01-01-1970, rounded down to nearest minute")
        } else {
            return nil
        }
    }
    
    var Timezone: SWKSensor? {
        if timeZone != nil {
            return SWKSensor(type: .General, name: "Time Zone", sensorID: "tz", measurement: timeZone!, unit: "None", desc: "IANA Time Zone")
        } else {
            return nil
        }
    }
}
