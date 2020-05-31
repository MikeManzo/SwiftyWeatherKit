//
//  StationData+Temperature.swift
//  
//
//  Created by Mike Manzo on 5/11/20.
//

import Foundation

extension AWStationData {
    var TemperatureSensors: [AWSensor] {
        let sensors: [AWSensor?] = [TemperatureInside, TemperatureOutdoor, TemperatureOutdoorSensor1, TemperatureOutdoorSensor2, TemperatureOutdoorSensor3,
                                     TemperatureOutdoorSensor4, TemperatureOutdoorSensor5, TemperatureOutdoorSensor6, TemperatureOutdoorSensor7, TemperatureOutdoorSensor8,
                                     TemperatureOutdoorSensor9, TemperatureOutdoorSensor10, TemperatureSoilSensor1, TemperatureSoilSensor2, TemperatureSoilSensor3,
                                     TemperatureSoilSensor4, TemperatureSoilSensor5, TemperatureSoilSensor6, TemperatureSoilSensor7, TemperatureSoilSensor8, TemperatureSoilSensor9,
                                     TemperatureSoilSensor10, DewPointOutdoor, DewPointIndoor, TempFeelsLikeOutdoor, TempFeelsLikeIndoor, TempFeelsLikeOutdoorSensor1,
                                     TempFeelsLikeOutdoorSensor2, TempFeelsLikeOutdoorSensor3, TempFeelsLikeOutdoorSensor4, TempFeelsLikeOutdoorSensor5, TempFeelsLikeOutdoorSensor6,
                                     TempFeelsLikeOutdoorSensor7, TempFeelsLikeOutdoorSensor8, TempFeelsLikeOutdoorSensor9, TempFeelsLikeOutdoorSensor10, DewPointOutdoorSensor1,
                                     DewPointOutdoorSensor2, DewPointOutdoorSensor3, DewPointOutdoorSensor4, DewPointOutdoorSensor5, DewPointOutdoorSensor6, DewPointOutdoorSensor7,
                                     DewPointOutdoorSensor8, DewPointOutdoorSensor9, DewPointOutdoorSensor10]
        return sensors.compactMap{ $0 }
    }
    
    var TemperatureInside: AWSensor? {
        if tempInF != nil {
            return AWSensor(type: .Temperature, name: "Indoor Temperature", sensorID: "tempinf", measurement: tempInF!, unit: "ºF", desc: "Indoor Temperature")
        } else {
            return nil
        }
    }
    
    var TemperatureOutdoor: AWSensor? {
        if tempOutF != nil {
            return AWSensor(type: .Temperature, name: "Outdoor Temperature", sensorID: "tempOutF", measurement: tempOutF!, unit: "ºF", desc: "Outdoor Temperature")
        } else {
            return nil
        }
    }
    
    var TemperatureOutdoorSensor1: AWSensor? {
        if tempOut1F != nil {
            return AWSensor(type: .Temperature, name: "Outdoor Temperature: 1", sensorID: "temp1f", measurement: tempOut1F!, unit: "ºF", desc: "Outdoor Temperature Sensor #1")
        } else {
            return nil
        }
    }
    
    var TemperatureOutdoorSensor2: AWSensor? {
        if tempOut2F != nil {
            return AWSensor(type: .Temperature, name: "Outdoor Temperature: 2", sensorID: "temp2f", measurement: tempOut2F!, unit: "ºF", desc: "Outdoor Temperature Sensor #2")
        } else {
            return nil
        }
    }
    
    var TemperatureOutdoorSensor3: AWSensor? {
        if tempOut3F != nil {
            return AWSensor(type: .Temperature, name: "Outdoor Temperature: 3", sensorID: "temp3f", measurement: tempOut3F!, unit: "ºF", desc: "Outdoor Temperature Sensor #3")
        } else {
            return nil
        }
    }
    
    var TemperatureOutdoorSensor4: AWSensor? {
        if tempOut4F != nil {
            return AWSensor(type: .Temperature, name: "Outdoor Temperature: 4", sensorID: "tem41f", measurement: tempOut4F!, unit: "ºF", desc: "Outdoor Temperature Sensor #4")
        } else {
            return nil
        }
    }
    
    var TemperatureOutdoorSensor5: AWSensor? {
        if tempOut5F != nil {
            return AWSensor(type: .Temperature, name: "Outdoor Temperature: 5", sensorID: "temp5f", measurement: tempOut5F!, unit: "ºF", desc: "Outdoor Temperature Sensor #5")
        } else {
            return nil
        }
    }
    
    var TemperatureOutdoorSensor6: AWSensor? {
        if tempOut6F != nil {
            return AWSensor(type: .Temperature, name: "Outdoor Temperature: 6", sensorID: "temp6f", measurement: tempOut6F!, unit: "ºF", desc: "Outdoor Temperature Sensor #6")
        } else {
            return nil
        }
    }
    
    var TemperatureOutdoorSensor7: AWSensor? {
        if tempOut7F != nil {
            return AWSensor(type: .Temperature, name: "Outdoor Temperature: 7", sensorID: "temp7f", measurement: tempOut7F!, unit: "ºF", desc: "Outdoor Temperature Sensor #7")
        } else {
            return nil
        }
    }
    
    var TemperatureOutdoorSensor8: AWSensor? {
        if tempOut8F != nil {
            return AWSensor(type: .Temperature, name: "Outdoor Temperature: 8", sensorID: "temp8f", measurement: tempOut8F!, unit: "ºF", desc: "Outdoor Temperature Sensor #8")
        } else {
            return nil
        }
    }
    
    var TemperatureOutdoorSensor9: AWSensor? {
        if tempOut9F != nil {
            return AWSensor(type: .Temperature, name: "Outdoor Temperature: 9", sensorID: "temp9f", measurement: tempOut9F!, unit: "ºF", desc: "Outdoor Temperature Sensor #9")
        } else {
            return nil
        }
    }
    
    var TemperatureOutdoorSensor10: AWSensor? {
        if tempOut10F != nil {
            return AWSensor(type: .Temperature, name: "Outdoor Temperature: 10", sensorID: "temp10f", measurement: tempOut10F!, unit: "ºF", desc: "Outdoor Temperature Sensor #10")
        } else {
            return nil
        }
    }
    
    var TemperatureSoilSensor1: AWSensor? {
        if soilTempOut1F != nil {
            return AWSensor(type: .Temperature, name: "Soil Temperature: 1", sensorID: "soiltemp1f", measurement: soilTempOut1F!, unit: "ºF", desc: "Soil Temperature Sensor #1")
        } else {
            return nil
        }
    }
    
    var TemperatureSoilSensor2: AWSensor? {
        if soilTempOut2F != nil {
            return AWSensor(type: .Temperature, name: "Soil Temperature: 2", sensorID: "soiltemp2f", measurement: soilTempOut2F!, unit: "ºF", desc: "Soil Temperature Sensor #2")
        } else {
            return nil
        }
    }
    
    var TemperatureSoilSensor3: AWSensor? {
        if soilTempOut3F != nil {
            return AWSensor(type: .Temperature, name: "Soil Temperature: 3", sensorID: "soiltemp3f", measurement: soilTempOut3F!, unit: "ºF", desc: "Soil Temperature Sensor #3")
        } else {
            return nil
        }
    }
    
    var TemperatureSoilSensor4: AWSensor? {
        if soilTempOut4F != nil {
            return AWSensor(type: .Temperature, name: "Soil Temperature: 4", sensorID: "soiltemp4f", measurement: soilTempOut4F!, unit: "ºF", desc: "Soil Temperature Sensor #4")
        } else {
            return nil
        }
    }
    
    var TemperatureSoilSensor5: AWSensor? {
        if soilTempOut5F != nil {
            return AWSensor(type: .Temperature, name: "Soil Temperature: 5", sensorID: "soiltemp5f", measurement: soilTempOut5F!, unit: "ºF", desc: "Soil Temperature Sensor #5")
        } else {
            return nil
        }
    }
    
    var TemperatureSoilSensor6: AWSensor? {
        if soilTempOut6F != nil {
            return AWSensor(type: .Temperature, name: "Soil Temperature: 6", sensorID: "soiltemp6f", measurement: soilTempOut6F!, unit: "ºF", desc: "Soil Temperature Sensor #6")
        } else {
            return nil
        }
    }
    
    var TemperatureSoilSensor7: AWSensor? {
        if soilTempOut7F != nil {
            return AWSensor(type: .Temperature, name: "Soil Temperature: 7", sensorID: "soiltemp7f", measurement: soilTempOut7F!, unit: "ºF", desc: "Soil Temperature Sensor #7")
        } else {
            return nil
        }
    }
    
    var TemperatureSoilSensor8: AWSensor? {
        if soilTempOut8F != nil {
            return AWSensor(type: .Temperature, name: "Soil Temperature: 8", sensorID: "soiltemp8f", measurement: soilTempOut8F!, unit: "ºF", desc: "Soil Temperature Sensor #8")
        } else {
            return nil
        }
    }
    
    var TemperatureSoilSensor9: AWSensor? {
        if soilTempOut9F != nil {
            return AWSensor(type: .Temperature, name: "Soil Temperature: 9", sensorID: "soiltemp9f", measurement: soilTempOut9F!, unit: "ºF", desc: "Soil Temperature Sensor #9")
        } else {
            return nil
        }
    }
    
    var TemperatureSoilSensor10: AWSensor? {
        if soilTempOut10F != nil {
            return AWSensor(type: .Temperature, name: "Soil Temperature: 10", sensorID: "soiltemp10f", measurement: soilTempOut10F!, unit: "ºF", desc: "Soil Temperature Sensor #10")
        } else {
            return nil
        }
    }
    
    var DewPointOutdoor: AWSensor? {
        if dewPointOut != nil {
            return AWSensor(type: .Temperature, name: "Outdoor Dew Point", sensorID: "dewPoint", measurement: dewPointOut!, unit: "ºF", desc: "Outdoor Dew Point")
        } else {
            return nil
        }
    }
    
    var DewPointIndoor: AWSensor? {
        get {
            if dewPointIn != nil {
                return AWSensor(type: .Temperature, name: "Indoor Dew Point", sensorID: "dewPointin", measurement: dewPointIn!, unit: "ºF", desc: "Indoor Dew Point")
            } else {
                return nil
            }
        }
    }
    
    var TempFeelsLikeOutdoor: AWSensor? {
        if tempFeelsLikeOutF != nil {
            return AWSensor(type: .Temperature, name: "Outdoor Temperature Feels Like", sensorID: "feelsLike", measurement: tempFeelsLikeOutF!, unit: "ºF", desc: "If < 50ºF => Wind Chill, if > 68ºF => Heat Index")
        } else {
            return nil
        }
    }
    
    var TempFeelsLikeIndoor: AWSensor? {
        if tempFeelsLikeInF != nil {
            return AWSensor(type: .Temperature, name: "Indoor Temperature Feels Like", sensorID: "feelsLikein", measurement: tempFeelsLikeInF!, unit: "ºF", desc: "Indoor Feels Like")
        } else {
            return nil
        }
    }
    
    var TempFeelsLikeOutdoorSensor1: AWSensor? {
        if tempFeelsLikeOut1 != nil {
            return AWSensor(type: .Temperature, name: "Outdoor Temperature Feels Like: 1", sensorID: "feelsLike1", measurement: tempFeelsLikeOut1!,
                             unit: "ºF", desc: "Sensor 1: If < 50ºF => Wind Chill, if > 68ºF => Heat Index")
        } else {
            return nil
        }
    }
    
    var TempFeelsLikeOutdoorSensor2: AWSensor? {
        if tempFeelsLikeOut2 != nil {
            return AWSensor(type: .Temperature, name: "Outdoor Temperature Feels Like: 2", sensorID: "feelsLike2", measurement: tempFeelsLikeOut2!,
                             unit: "ºF", desc: "Sensor 2: If < 50ºF => Wind Chill, if > 68ºF => Heat Index")
        } else {
            return nil
        }
    }
    
    var TempFeelsLikeOutdoorSensor3: AWSensor? {
        if tempFeelsLikeOut3 != nil {
            return AWSensor(type: .Temperature, name: "Outdoor Temperature Feels Like: 3", sensorID: "feelsLike3", measurement: tempFeelsLikeOut3!,
                             unit: "ºF", desc: "Sensor 3: If < 50ºF => Wind Chill, if > 68ºF => Heat Index")
        } else {
            return nil
        }
    }
    
    var TempFeelsLikeOutdoorSensor4: AWSensor? {
        if tempFeelsLikeOut4 != nil {
            return AWSensor(type: .Temperature, name: "Outdoor Temperature Feels Like: 4", sensorID: "feelsLike4", measurement: tempFeelsLikeOut4!,
                             unit: "ºF", desc: "Sensor 4: If < 50ºF => Wind Chill, if > 68ºF => Heat Index")
        } else {
            return nil
        }
    }
    
    var TempFeelsLikeOutdoorSensor5: AWSensor? {
        if tempFeelsLikeOut5 != nil {
            return AWSensor(type: .Temperature, name: "Outdoor Temperature Feels Like: 5", sensorID: "feelsLike5", measurement: tempFeelsLikeOut5!,
                             unit: "ºF", desc: "Sensor 5: If < 50ºF => Wind Chill, if > 68ºF => Heat Index")
        } else {
            return nil
        }
    }
    
    var TempFeelsLikeOutdoorSensor6: AWSensor? {
        if tempFeelsLikeOut6 != nil {
            return AWSensor(type: .Temperature, name: "Outdoor Temperature Feels Like: 6", sensorID: "feelsLike6", measurement: tempFeelsLikeOut6!,
                             unit: "ºF", desc: "Sensor 6: If < 50ºF => Wind Chill, if > 68ºF => Heat Index")
        } else {
            return nil
        }
    }
    
    var TempFeelsLikeOutdoorSensor7: AWSensor? {
        if tempFeelsLikeOut7 != nil {
            return AWSensor(type: .Temperature, name: "Outdoor Temperature Feels Like: 7", sensorID: "feelsLike7", measurement: tempFeelsLikeOut7!,
                             unit: "ºF", desc: "Sensor 7: If < 50ºF => Wind Chill, if > 68ºF => Heat Index")
        } else {
            return nil
        }
    }
    
    var TempFeelsLikeOutdoorSensor8: AWSensor? {
        if tempFeelsLikeOut8 != nil {
            return AWSensor(type: .Temperature, name: "Outdoor Temperature Feels Like: 8", sensorID: "feelsLike8", measurement: tempFeelsLikeOut8!,
                             unit: "ºF", desc: "Sensor 8: If < 50ºF => Wind Chill, if > 68ºF => Heat Index")
        } else {
            return nil
        }
    }
    
    var TempFeelsLikeOutdoorSensor9: AWSensor? {
        if tempFeelsLikeOut9 != nil {
            return AWSensor(type: .Temperature, name: "Outdoor Temperature Feels Like: 9", sensorID: "feelsLike9", measurement: tempFeelsLikeOut9!,
                             unit: "ºF", desc: "Sensor 9: If < 50ºF => Wind Chill, if > 68ºF => Heat Index")
        } else {
            return nil
        }
    }
    
    var TempFeelsLikeOutdoorSensor10: AWSensor? {
        if tempFeelsLikeOut10 != nil {
            return AWSensor(type: .Temperature, name: "Outdoor Temperature Feels Like: 10", sensorID: "feelsLike10", measurement: tempFeelsLikeOut10!,
                             unit: "ºF", desc: "Sensor 10: If < 50ºF => Wind Chill, if > 68ºF => Heat Index")
        } else {
            return nil
        }
    }
    
    var DewPointOutdoorSensor1: AWSensor? {
        if dewPoint1 != nil {
            return AWSensor(type: .Temperature, name: "Dew Point: 1", sensorID: "dewPoint1", measurement: dewPoint1!, unit: "ºF", desc: "Sensor 1: Dew Point")
        } else {
            return nil
        }
    }
    
    var DewPointOutdoorSensor2: AWSensor? {
        if dewPoint2 != nil {
            return AWSensor(type: .Temperature, name: "Dew Point: 2", sensorID: "dewPoint2", measurement: dewPoint2!, unit: "ºF", desc: "Sensor 2: Dew Point")
        } else {
            return nil
        }
    }
    
    var DewPointOutdoorSensor3: AWSensor? {
        if dewPoint3 != nil {
            return AWSensor(type: .Temperature, name: "Dew Point: 3", sensorID: "dewPoint3", measurement: dewPoint3!, unit: "ºF", desc: "Sensor 3: Dew Point")
        } else {
            return nil
        }
    }
    
    
    var DewPointOutdoorSensor4: AWSensor? {
        if dewPoint4 != nil {
            return AWSensor(type: .Temperature, name: "Dew Point: 4", sensorID: "dewPoint4", measurement: dewPoint4!, unit: "ºF", desc: "Sensor 4: Dew Point")
        } else {
            return nil
        }
    }
    
    var DewPointOutdoorSensor5: AWSensor? {
        if dewPoint5 != nil {
            return AWSensor(type: .Temperature, name: "Dew Point: 5", sensorID: "dewPoint5", measurement: dewPoint5!, unit: "ºF", desc: "Sensor 5: Dew Point")
        } else {
            return nil
        }
    }
    
    var DewPointOutdoorSensor6: AWSensor? {
        if dewPoint6 != nil {
            return AWSensor(type: .Temperature, name: "Dew Point: 6", sensorID: "dewPoint6", measurement: dewPoint6!, unit: "ºF", desc: "Sensor 6: Dew Point")
        } else {
            return nil
        }
    }
    
    var DewPointOutdoorSensor7: AWSensor? {
        if dewPoint7 != nil {
            return AWSensor(type: .Temperature, name: "Dew Point: 7", sensorID: "dewPoint7", measurement: dewPoint7!, unit: "ºF", desc: "Sensor 7: Dew Point")
        } else {
            return nil
        }
    }
    
    var DewPointOutdoorSensor8: AWSensor? {
        if dewPoint8 != nil {
            return AWSensor(type: .Temperature, name: "Dew Point: 8", sensorID: "dewPoint8", measurement: dewPoint8!, unit: "ºF", desc: "Sensor 8: Dew Point")
        } else {
            return nil
        }
    }
    
    var DewPointOutdoorSensor9: AWSensor? {
        if dewPoint9 != nil {
            return AWSensor(type: .Temperature, name: "Dew Point: 9", sensorID: "dewPoint9", measurement: dewPoint9!, unit: "ºF", desc: "Sensor 9: Dew Point")
        } else {
            return nil
        }
    }
    
    var DewPointOutdoorSensor10: AWSensor? {
        if dewPoint10 != nil {
            return AWSensor(type: .Temperature, name: "Dew Point: 10", sensorID: "dewPoint10", measurement: dewPoint10!, unit: "ºF", desc: "Sensor 10: Dew Point")
        } else {
            return nil
        }
    }
}
