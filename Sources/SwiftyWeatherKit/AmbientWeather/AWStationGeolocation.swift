//
//  AWStationGeolocation.swift
//  
//
//  Created by Mike Manzo on 5/10/20.
//

import Foundation
import CoreLocation

public class AWStationGeolocation: Codable {
    let location: String?
    let address: String?
    let elevation: Double?
    let geoType: AWStationGeoType
    
    enum CodingKeys: String, CodingKey {
        case elevation = "elevation"
        case location = "location"
        case address = "address"
        case geoType = "geo"
    }

    /// If the data is present, return a CLLocation object from the reporting lat/lon
    open var position: CLLocation? {
        guard let coordinate = geoType.coordinate else {return nil}
        guard let altitude = elevation else {return nil}
        return CLLocation(coordinate: coordinate, altitude: altitude,
                          horizontalAccuracy: kCLLocationAccuracyNearestTenMeters,
                          verticalAccuracy: kCLLocationAccuracyNearestTenMeters,
                          timestamp: Date())
    }

    ///
    /// Provides a simple way to "see" what ths device is reporting
    ///
    public var prettyString: String {
        get {
            let debugInfo = """
            GeoLocation:
            \t\tLocation: \(location ?? "Unknown")
            \t\tAddress: \(address ?? "Unknown")
            \t\tElevation: \(elevation ?? -1.0)
            \t\t\(geoType.prettyString)
            """
            return debugInfo
        }
    }

    ///
    /// Empry Init
    ///
    init() {
        location    = nil
        address     = nil
        elevation   = nil
        geoType = AWStationGeoType()
    }

    ///
    /// Public & Codeable Initializer ... this creates the object and populates it w/ the JSON-derived decoer
    /// - Parameter decoder: JSON_Derived decoder
    /// - Throws: a decoding error if something has gone wrong
    ///
    required public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        do {
            location = try container.decodeIfPresent(String.self, forKey: .location)
            address = try container.decodeIfPresent(String.self, forKey: .address)
            elevation = try container.decodeIfPresent(Double.self, forKey: .elevation)
            geoType = try container.decodeIfPresent(AWStationGeoType.self, forKey: .geoType) ?? AWStationGeoType()
        }
        catch let error as DecodingError {
            throw error
        }
    }
}
