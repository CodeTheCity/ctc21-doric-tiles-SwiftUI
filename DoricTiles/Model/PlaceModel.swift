//
//  PlaceModel.swift
//  DoricTiles
//
//  Created by Andrew Sage on 28/11/2020.
//

import SwiftUI
import MapKit

struct Place: Codable, Identifiable {
    let place: String
    let place_EN: String
    let place_SCO: String?
    let image: String?
    var latitude: String
    var longitude: String
    
    // Computed Property
    var id: String { return place }
    var location: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: Double(latitude)!, longitude: Double(longitude)!)
    }
    
}
