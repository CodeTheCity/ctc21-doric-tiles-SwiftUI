//
//  DetailMapView.swift
//  DoricTiles
//
//  Created by Andrew Sage on 28/11/2020.
//

import SwiftUI
import MapKit

struct DetailMapView: View {
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 57.5583, longitude: -2.63004), span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    
    var place: Place
    
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: [place], annotationContent: { item in
            
            MapAnnotation(coordinate: item.location) {
                MapAnnotationView(location: item)
            } //: Annotation
        }) //: MAP
            .overlay(
                NavigationLink(destination: MapView()) {
                    HStack {
                        Image(systemName: "mappin.circle")
                            .foregroundColor(.white)
                            .imageScale(.large)
                        
                        Text("Locations")
                            .foregroundColor(.accentColor)
                            .fontWeight(.bold)
                    } //: HSTACK
                    .padding(.vertical, 10)
                    .padding(.horizontal, 14)
                    .background(
                        Color.black
                            .opacity(0.4)
                            .cornerRadius(8)
                    )
                    
                } //: NAVIGATION
                .padding(12)
                , alignment: .topTrailing
            )
            .frame(height: 256)
            .cornerRadius(12)
        
        .onAppear {
            region.center = place.location
        }
        
    }
}

struct DetailMapView_Previews: PreviewProvider {
    
    static let places: [Place] = Bundle.main.decode("places.json")
    
    static var previews: some View {
        DetailMapView(place: places[10])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
