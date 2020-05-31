//
//  StationData+Rain.swift
//  
//
//  Created by Mike Manzo on 5/11/20.
//

import Foundation

extension AWStationData {
    var RainSensors: [AWSensor] {
        let sensors: [AWSensor?] = [RainRatePerHour, RainDaily, Rain24Hrs, RainWeekly,
                                     RainMonthly, RainYearly, RainEvent, RainTotal,
                                     RainDateLast]
        return sensors.compactMap{ $0 }
    }
    
    var RainRatePerHour: AWSensor? {
        if rainHourIn != nil {
            return AWSensor(type: .RainDate, name: "Hourly Rain", sensorID: "hourlyrainin", measurement: rainHourIn!, unit: "in/hr", desc: "Hourly Rain Rate")
        } else {
            return nil
        }
    }
    
    var RainDaily: AWSensor? {
        if rainDailyIn != nil {
            return AWSensor(type: .Rain, name: "Rain Today", sensorID: "dailyrainin", measurement: rainDailyIn!, unit: "in", desc: "Daily Rain")
        } else {
            return nil
        }
    }
    
    var Rain24Hrs: AWSensor? {
        if rain24HourIn != nil {
            return AWSensor(type: .RainDate, name: "24 Hour Rain", sensorID: "24hourrainin", measurement: rain24HourIn!, unit: "in", desc: "Rain over last 24 Hours")
        } else {
            return nil
        }
    }
    
    var RainWeekly: AWSensor? {
        if rainWeeklyIn != nil {
            return AWSensor(type: .Rain, name: "Weekly Rain", sensorID: "weeklyrainin", measurement: rainWeeklyIn!, unit: "in", desc: "Rain this week")
        } else {
            return nil
        }
    }
    
    var RainMonthly: AWSensor? {
        if rainMonthlyIn != nil {
            return AWSensor(type: .Rain, name: "Monthly Rain", sensorID: "monthlyrainin", measurement: rainMonthlyIn!, unit: "in", desc: "Rain this month")
        } else {
            return nil
        }
    }
    
    var RainYearly: AWSensor? {
        if rainYearlyIn != nil {
            return AWSensor(type: .Rain, name: "Yearly Rain", sensorID: "yearlyrainin", measurement: rainYearlyIn!, unit: "in", desc: "Rain this year")
        } else {
            return nil
        }
    }
    
    var RainEvent: AWSensor? {
        if rainEventIn != nil {
            return AWSensor(type: .Rain, name: "Event Rain", sensorID: "eventrainin", measurement: rainEventIn!, unit: "in", desc: "Event Rain")
        } else {
            return nil
        }
    }
    
    var RainTotal: AWSensor? {
        if rainTotalIn != nil {
            return AWSensor(type: .Rain, name: "Total Rain", sensorID: "totalrainin", measurement: rainTotalIn!, unit: "in", desc: "Total rain since last factory reset")
        } else {
            return nil
        }
    }
    
    var RainDateLast: AWSensor? {
        if rainLastDate != nil {
            return AWSensor(type: .RainDate, name: "Last Time it Rained", sensorID: "lastRain", measurement: rainLastDate!, unit: "None", desc: "Last time hourly rain > 0 inches")
        } else {
            return nil
        }
    }
}
