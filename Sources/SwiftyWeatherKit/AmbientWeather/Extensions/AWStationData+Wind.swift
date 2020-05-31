//
//  StationData+Wind.swift
//  
//
//  Created by Mike Manzo on 5/11/20.
//

import Foundation

extension AWStationData {
    var WindSensors: [AWSensor] {
        get {
            let sensors: [AWSensor?] = [WindDirection, WindSpeed, WindGust, WindGustDailyMax,
                                         WindGustDirection, WindSpeed2MinAverage, WindSpeed10MinAverage,
                                         WindDirection10MinAverage]
            return sensors.compactMap{ $0 }
        }
    }
    
    var WindDirection: AWSensor? {
        if windDirection != nil {
            return AWSensor(type: .WindDirection, name: "Wind Direction", sensorID: "winddir", measurement: windDirection!, unit: "º", desc: "Instantaneous wind direction, 0-360º")
        } else {
            return nil
        }
    }
    
    var WindSpeed: AWSensor? {
        if windSpeedMPH != nil {
            return AWSensor(type: .WindSpeed, name: "Wind Speed", sensorID: "windspeedmph", measurement: windSpeedMPH!, unit: "MPH", desc: "Instantaneous wind speed")
        } else {
            return nil
        }
    }
    
    var WindGust: AWSensor? {
        if windGustMPH != nil {
            return AWSensor(type: .WindSpeed, name: "Wind Gust", sensorID: "windgustmph", measurement: windGustMPH!, unit: "MPH", desc: "Maximum wind speed in the last 10 minutes")
        } else {
            return nil
        }
    }
    
    var WindGustDailyMax: AWSensor? {
        if windGustDailyMax != nil {
            return AWSensor(type: .WindSpeed, name: "Max Wind Gust Today", sensorID: "maxdailygust", measurement: windGustDailyMax!, unit: "MPH", desc: "Maximum wind speed in last day")
        } else {
            return nil
        }
    }
    
    var WindGustDirection: AWSensor? {
        if windGustDir != nil {
            return AWSensor(type: .WindDirection, name: "Wind Gust Direction", sensorID: "windgustdir", measurement: windGustDir!, unit: "º", desc: "Wind direction at which the wind gust occurred")
        } else {
            return nil
        }
    }
    
    var WindSpeed2MinAverage: AWSensor? {
        if windSpeedAvg2Min != nil {
            return AWSensor(type: .WindSpeed, name: "2 Minute Wind Speed Avg", sensorID: "windspdmph_avg2m", measurement: windSpeedAvg2Min!, unit: "MPH", desc: "Average wind speed, 2 minute average")
        } else {
            return nil
        }
    }
    
    var WindDirection2MinAverage: AWSensor? {
        if winDir2Min != nil {
            return AWSensor(type: .WindDirection, name: "2 Minute Wind Direction Avg", sensorID: "winddir_avg2m", measurement: winDir2Min!, unit: "º", desc: "Average wind direction, 2 minute average")
        } else {
            return nil
        }
    }
    
    var WindSpeed10MinAverage: AWSensor? {
        if windSpeedAvg10Min != nil {
            return AWSensor(type: .WindSpeed, name: "10 Minute Wind Speed Avg", sensorID: "windspdmph_avg10m", measurement: windSpeedAvg10Min!, unit: "MPH", desc: "Average wind speed, 10 minute average")
        } else {
            return nil
        }
    }
    
    var WindDirection10MinAverage: AWSensor? {
        if windDir10Min != nil {
            return AWSensor(type: .WindDirection, name: "10 Minute Wind Direction Avg", sensorID: "winddir_avg10m", measurement: windDir10Min!, unit: "º", desc: "Average wind direction, 10 minute average")
        } else {
            return nil
        }
    }
}
