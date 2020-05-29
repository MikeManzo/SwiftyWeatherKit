//
//  StationData+Rain.swift
//  
//
//  Created by Mike Manzo on 5/11/20.
//

import Foundation

extension AWStationData {
    var RainSensors: [SWKSensor] {
        let sensors: [SWKSensor?] = [RainRatePerHour, RainDaily, Rain24Hrs, RainWeekly,
                                     RainMonthly, RainYearly, RainEvent, RainTotal,
                                     RainDateLast]
        return sensors.compactMap{ $0 }
    }
    
    var RainRatePerHour: SWKSensor? {
        if rainHourIn != nil {
            return SWKSensor(type: .Rain, name: "Hourly Rain", sensorID: "hourlyrainin", measurement: rainHourIn!, unit: "in/hr", desc: "Hourly Rain Rate")
        } else {
            return nil
        }
    }
    
    var RainDaily: SWKSensor? {
        if rainDailyIn != nil {
            return SWKSensor(type: .Rain, name: "Rain Today", sensorID: "dailyrainin", measurement: rainDailyIn!, unit: "in", desc: "Daily Rain")
        } else {
            return nil
        }
    }
    
    var Rain24Hrs: SWKSensor? {
        if rain24HourIn != nil {
            return SWKSensor(type: .Rain, name: "24 Hour Rain", sensorID: "24hourrainin", measurement: rain24HourIn!, unit: "in", desc: "Rain over last 24 Hours")
        } else {
            return nil
        }
    }
    
    var RainWeekly: SWKSensor? {
        if rainWeeklyIn != nil {
            return SWKSensor(type: .Rain, name: "Weekly Rain", sensorID: "weeklyrainin", measurement: rainWeeklyIn!, unit: "in", desc: "Rain this week")
        } else {
            return nil
        }
    }
    
    var RainMonthly: SWKSensor? {
        if rainMonthlyIn != nil {
            return SWKSensor(type: .Rain, name: "Monthly Rain", sensorID: "monthlyrainin", measurement: rainMonthlyIn!, unit: "in", desc: "Rain this month")
        } else {
            return nil
        }
    }
    
    var RainYearly: SWKSensor? {
        if rainYearlyIn != nil {
            return SWKSensor(type: .Rain, name: "Yearly Rain", sensorID: "yearlyrainin", measurement: rainYearlyIn!, unit: "in", desc: "Rain this year")
        } else {
            return nil
        }
    }
    
    var RainEvent: SWKSensor? {
        if rainEventIn != nil {
            return SWKSensor(type: .Rain, name: "Event Rain", sensorID: "eventrainin", measurement: rainEventIn!, unit: "in", desc: "Event Rain")
        } else {
            return nil
        }
    }
    
    var RainTotal: SWKSensor? {
        if rainTotalIn != nil {
            return SWKSensor(type: .Rain, name: "Total Rain", sensorID: "totalrainin", measurement: rainTotalIn!, unit: "in", desc: "Total rain since last factory reset")
        } else {
            return nil
        }
    }
    
    var RainDateLast: SWKSensor? {
        if rainLastDate != nil {
            return SWKSensor(type: .Rain, name: "Last Time it Rained", sensorID: "lastRain", measurement: rainLastDate!, unit: "None", desc: "Last time hourly rain > 0 inches")
        } else {
            return nil
        }
    }
}
