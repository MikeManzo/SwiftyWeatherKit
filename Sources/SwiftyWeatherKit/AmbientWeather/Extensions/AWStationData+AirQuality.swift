//
//  StationData+AirQuality.swift
//  
//
//  Created by Mike Manzo on 5/11/20.
//

import Foundation

extension AWStationData {
    var AirQualitySensors: [SWKSensor] {
        
        let sensors: [SWKSensor?] = [AirQualityOutdoor, AirQualityOutdoor24Avg, AirQualityIndoor,
                                     AirQualityIndoor24Avg, UVIndex, SolarRadiation, CarbonDioxide]
        return sensors.compactMap{ $0 }
    }
    
    var AirQualityOutdoor: SWKSensor? {
        if airQualityOut != nil {
            return SWKSensor(type: .AirQuality, name: "Outdoor Air Quality", sensorID: "pm25", measurement: airQualityOut!, unit: "µg/m^3", desc: "PM2.5 Outdoor Air Quality")
        } else {
            return nil
        }
    }
    
    var AirQualityOutdoor24Avg: SWKSensor? {
        if airQualityOut24 != nil {
            return SWKSensor(type: .AirQuality, name: "24 Average Outdoor Air Quality", sensorID: "pm25_24h", measurement: airQualityOut24!, unit: "µg/m^3", desc: "PM2.5 Outdoor Air Quality Outdoor - 24 Hour Average")
        } else {
            return nil
        }
    }
    
    var AirQualityIndoor: SWKSensor? {
        if airQualityIn != nil {
            return SWKSensor(type: .AirQuality, name: "Indoor Air Quality", sensorID: "pm25_in", measurement: airQualityIn!, unit: "µg/m^3", desc: "PM2.5 Indoor Air Quality")
        } else {
            return nil
        }
    }
    
    var AirQualityIndoor24Avg: SWKSensor? {
        if airQualityIn24 != nil {
            return SWKSensor(type: .AirQuality, name: "24 Average Indoor Air Quality", sensorID: "pm25_in_24h", measurement: airQualityIn24!, unit: "µg/m^3", desc: "PM2.5 Indoor Air Quality - 24 Hour Average")
        } else {
            return nil
        }
    }
    
    var UVIndex: SWKSensor? {
        if uvIndex != nil {
            return SWKSensor(type: .AirQuality, name: "UV Index", sensorID: "uv", measurement: uvIndex!, unit: "None", desc: "Ultra-Violet Radiation Index")
        } else {
            return nil
        }
    }
    
    var SolarRadiation: SWKSensor? {
        if solarRadiation != nil {
            return SWKSensor(type: .AirQuality, name: "Solar Radiation", sensorID: "solarradiation", measurement: solarRadiation!, unit: "W/m^2", desc: "Solar Radiation")
        } else {
            return nil
        }
    }
    
    var CarbonDioxide: SWKSensor? {
        if carbonDioxide != nil {
            return SWKSensor(type: .AirQuality, name: "CO2 Level", sensorID: "co2", measurement: carbonDioxide!, unit: "ppm", desc: "Carbon Dioxide Level")
        } else {
            return nil
        }
    }
}
