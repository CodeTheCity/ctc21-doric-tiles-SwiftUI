//
//  MapView.swift
//  DoricTiles
//
//  Created by Andrew Sage on 28/11/2020.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    @State private var region: MKCoordinateRegion = {
        var mapCoordinates = CLLocationCoordinate2D(latitude: 57.5583, longitude: -2.63004)
        var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 1.0, longitudeDelta: 1.0)
        var mapRegion = MKCoordinateRegion(center: mapCoordinates, span: mapZoomLevel)
        
        return mapRegion
    }()
    
    let places: [Place] = Bundle.main.decode("places.json")
    
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: places, annotationContent: { item in
            
            MapAnnotation(coordinate: item.location) {
                MapAnnotationView(location: item)
            } //: Annotation
        }) //: MAP
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
