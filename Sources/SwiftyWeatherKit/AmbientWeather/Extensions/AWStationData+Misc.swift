//
//  StationData+Misc.swift
//  
//
//  Created by Mike Manzo on 5/11/20.
//

import Foundation

extension AWStationData {
    var MiscSensors: [AWSensor] {
        let sensors: [AWSensor?] = [DateUTC, Timezone]
        return sensors.compactMap{ $0 }
    }
    
    var DateUTC: AWSensor? {
        if dateUTC != nil {
            return AWSensor(type: .General, name: "Date", sensorID: "dateutc", measurement: dateUTC!, unit: "ms", desc: "Date, from 01-01-1970, rounded down to nearest minute")
        } else {
            return nil
        }
    }
    
    var Timezone: AWSensor? {
        if timeZone != nil {
            return AWSensor(type: .General, name: "Time Zone", sensorID: "tz", measurement: timeZone!, unit: "None", desc: "IANA Time Zone")
        } else {
            return nil
        }
    }
}
