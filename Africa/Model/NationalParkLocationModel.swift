//
//  LocationModel.swift
//  Africa
//
//  Created by Cat on 19.09.2021.
//

import Foundation
import MapKit

struct NationalParkLocationModel: Codable, Identifiable {
    var id: String
    var name: String
    var image: String
    var latitude: Double
    var longitude: Double

    var location: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}
