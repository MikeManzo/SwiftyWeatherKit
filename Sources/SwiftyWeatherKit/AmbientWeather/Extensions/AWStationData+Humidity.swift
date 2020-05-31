//
//  File.swift
//  
//
//  Created by Mike Manzo on 5/11/20.
//

import Foundation

extension AWStationData {
    var HumiditySensors: [AWSensor] {
        let sensors: [AWSensor?] = [HumidityOutdoor, HumidityIndoor, HumidityOutdoorSensor1, HumidityOutdoorSensor2,
                                     HumidityOutdoorSensor3, HumidityOutdoorSensor4, HumidityOutdoorSensor5, HumidityOutdoorSensor6,
                                     HumidityOutdoorSensor7, HumidityOutdoorSensor8, HumidityOutdoorSensor9, HumidityOutdoorSensor10,
                                     HumiditySoilSensor1, HumiditySoilSensor2, HumiditySoilSensor3, HumiditySoilSensor4,
                                     HumiditySoilSensor5, HumiditySoilSensor6, HumiditySoilSensor7, HumiditySoilSensor8,
                                     HumiditySoilSensor9, HumiditySoilSensor10]
        return sensors.compactMap{ $0 }
    }
    
    var HumidityOutdoor: AWSensor? {
        if humidityOut != nil {
            return AWSensor(type: .Humidity, name: "Outdoor Humidity", sensorID: "humidity", measurement: humidityOut!, unit: "%", desc: "Outdoor Humidity, 0-l00%")
        } else {
            return nil
        }
    }
    
    var HumidityIndoor: AWSensor? {
        if humidityIn != nil {
            return AWSensor(type: .Humidity, name: "Indoor Humidity", sensorID: "humidityin", measurement: humidityIn!, unit: "%", desc: "Indoor Humidity, 0-100%")
        } else {
            return nil
        }
    }
    
    var HumidityOutdoorSensor1: AWSensor? {
        if humidityOut1 != nil {
            return AWSensor(type: .Humidity, name: "Outdoor Humidity: 1", sensorID: "humidity1", measurement: humidityOut1!, unit: "%", desc: "Outdoor Humidity Sensor #1, 0-l00%")
        } else {
            return nil
        }
    }
    
    var HumidityOutdoorSensor2: AWSensor? {
        if humidityOut2 != nil {
            return AWSensor(type: .Humidity, name: "Outdoor Humidity: 2", sensorID: "humidity2", measurement: humidityOut2!, unit: "%", desc: "Outdoor Humidity Sensor #2, 0-l00%")
        } else {
            return nil
        }
    }
    
    var HumidityOutdoorSensor3: AWSensor? {
        if humidityOut3 != nil {
            return AWSensor(type: .Humidity, name: "Outdoor Humidity: 3", sensorID: "humidity3", measurement: humidityOut3!, unit: "%", desc: "Outdoor Humidity Sensor #3, 0-l00%")
        } else {
            return nil
        }
    }
    
    var HumidityOutdoorSensor4: AWSensor? {
        if humidityOut4 != nil {
            return AWSensor(type: .Humidity, name: "Outdoor Humidity: 4", sensorID: "humidity4", measurement: humidityOut4!, unit: "%", desc: "Outdoor Humidity Sensor #4, 0-l00%")
        } else {
            return nil
        }
    }
    
    var HumidityOutdoorSensor5: AWSensor? {
        if humidityOut5 != nil {
            return AWSensor(type: .Humidity, name: "Outdoor Humidity: 5", sensorID: "humidity5", measurement: humidityOut5!, unit: "%", desc: "Outdoor Humidity Sensor #5, 0-l00%")
        } else {
            return nil
        }
    }
    
    var HumidityOutdoorSensor6: AWSensor? {
        if humidityOut6 != nil {
            return AWSensor(type: .Humidity, name: "Outdoor Humidity: 6", sensorID: "humidity6", measurement: humidityOut6!, unit: "%", desc: "Outdoor Humidity Sensor #6, 0-l00%")
        } else {
            return nil
        }
    }
    
    var HumidityOutdoorSensor7: AWSensor? {
        if humidityOut7 != nil {
            return AWSensor(type: .Humidity, name: "Outdoor Humidity: 7", sensorID: "humidity7", measurement: humidityOut7!, unit: "%", desc: "Outdoor Humidity Sensor #7, 0-l00%")
        } else {
            return nil
        }
    }
    
    var HumidityOutdoorSensor8: AWSensor? {
        if humidityOut8 != nil {
            return AWSensor(type: .Humidity, name: "Outdoor Humidity: 8", sensorID: "humidity8", measurement: humidityOut8!, unit: "%", desc: "Outdoor Humidity Sensor #8, 0-l00%")
        } else {
            return nil
        }
    }
    
    var HumidityOutdoorSensor9: AWSensor? {
        if humidityOut9 != nil {
            return AWSensor(type: .Humidity, name: "Outdoor Humidity: 9", sensorID: "humidity9", measurement: humidityOut9!, unit: "%", desc: "Outdoor Humidity Sensor #9, 0-l00%")
        } else {
            return nil
        }
    }
    
    var HumidityOutdoorSensor10: AWSensor? {
        if humidityOut10 != nil {
            return AWSensor(type: .Humidity, name: "Outdoor Humidity: 10", sensorID: "humidity10", measurement: humidityOut10!, unit: "%", desc: "Outdoor Humidity Sensor #10, 0-l00%")
        } else {
            return nil
        }
    }
    
    var HumiditySoilSensor1: AWSensor? {
        if soilHumOut1F != nil {
            return AWSensor(type: .Humidity, name: "Soil Humidity: 1", sensorID: "soilhum1", measurement: soilHumOut1F!, unit: "%", desc: "Soil Humidity Sensor #1, 0-l00%")
        } else {
            return nil
        }
    }
    
    var HumiditySoilSensor2: AWSensor? {
        if soilHumOut2F != nil {
            return AWSensor(type: .Humidity, name: "Soil Humidity: 2", sensorID: "soilhum2", measurement: soilHumOut2F!, unit: "%", desc: "Soil Humidity Sensor #2, 0-l00%")
        } else {
            return nil
        }
    }
    
    var HumiditySoilSensor3: AWSensor? {
        if soilHumOut3F != nil {
            return AWSensor(type: .Humidity, name: "Soil Humidity: 3", sensorID: "soilhum3", measurement: soilHumOut3F!, unit: "%", desc: "Soil Humidity Sensor #3, 0-l00%")
        } else {
            return nil
        }
    }
    
    var HumiditySoilSensor4: AWSensor? {
        if soilHumOut4F != nil {
            return AWSensor(type: .Humidity, name: "Soil Humidity: 4", sensorID: "soilhum4", measurement: soilHumOut4F!, unit: "%", desc: "Soil Humidity Sensor #4, 0-l00%")
        } else {
            return nil
        }
    }
    
    var HumiditySoilSensor5: AWSensor? {
        if soilHumOut5F != nil {
            return AWSensor(type: .Humidity, name: "Soil Humidity: 5", sensorID: "soilhum5", measurement: soilHumOut5F!, unit: "%", desc: "Soil Humidity Sensor #5, 0-l00%")
        } else {
            return nil
        }
    }
    
    var HumiditySoilSensor6: AWSensor? {
        if soilHumOut6F != nil {
            return AWSensor(type: .Humidity, name: "Soil Humidity: 6", sensorID: "soilhum6", measurement: soilHumOut6F!, unit: "%", desc: "Soil Humidity Sensor #6, 0-l00%")
        } else {
            return nil
        }
    }
    
    var HumiditySoilSensor7: AWSensor? {
        if soilHumOut7F != nil {
            return AWSensor(type: .Humidity, name: "Soil Humidity: 7", sensorID: "soilhum7", measurement: soilHumOut7F!, unit: "%", desc: "Soil Humidity Sensor #7, 0-l00%")
        } else {
            return nil
        }
    }
    
    var HumiditySoilSensor8: AWSensor? {
        if soilHumOut8F != nil {
            return AWSensor(type: .Humidity, name: "Soil Humidity: 8", sensorID: "soilhum8", measurement: soilHumOut8F!, unit: "%", desc: "Soil Humidity Sensor #8, 0-l00%")
        } else {
            return nil
        }
    }
    
    var HumiditySoilSensor9: AWSensor? {
        if soilHumOut9F != nil {
            return AWSensor(type: .Humidity, name: "Soil Humidity: 9", sensorID: "soilhum9", measurement: soilHumOut9F!, unit: "%", desc: "Soil Humidity Sensor #9, 0-l00%")
        } else {
            return nil
        }
    }
    
    var HumiditySoilSensor10: AWSensor? {
        if soilHumOut10F != nil {
            return AWSensor(type: .Humidity, name: "Soil Humidity: 10", sensorID: "soilhum10", measurement: soilHumOut10F!, unit: "%", desc: "Soil Humidity Sensor #10, 0-l00%")
        } else {
            return nil
        }
    }
}
