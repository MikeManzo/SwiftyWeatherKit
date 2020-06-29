//
//  AWStationCoordinates.swift
//  
//
//  Created by Mike Manzo on 5/10/20.
//

import Foundation
import CoreLocation

public class AWStationCoordinates: Codable {
    let latitude: Double?
    let longitude: Double?
    
    enum CodingKeys: String, CodingKey {
        case longitude = "lon"
        case latitude = "lat"
    }

    /// If the data is present, return a CLLocation object from the reporting lat/lon
    open var latLon: CLLocation? {
        if latitude != nil && longitude != nil {
            return CLLocation(latitude: latitude!, longitude: longitude!)
        } else {
            return nil
        }
    }
    
    ///
    /// Public & Codeable Initializer ... this creates the object and populates it w/ the JSON-derived decoer
    /// - Parameter decoder: JSON-Derived decoder
    /// - Throws: a decoding error if something has gone wrong
    ///
    required public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        do {
            latitude = try container.decodeIfPresent(Double.self, forKey: .latitude)
            longitude = try container.decodeIfPresent(Double.self, forKey: .longitude)
        } catch let error as DecodingError {
            throw error
        }
    }
}
