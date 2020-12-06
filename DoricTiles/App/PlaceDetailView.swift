//
//  PlaceDetailView.swift
//  DoricTiles
//
//  Created by Andrew Sage on 28/11/2020.
//

import SwiftUI

struct PlaceDetailView: View {
    let place: Place
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing:20) {
                
                if place.image != nil {
                    RemoteImage(url: place.image!)
                        .scaledToFit()
                }
                
                if place.place_SCO != nil {
                    Text("Scots")
                        .font(.headline)
                        .padding(.top, 10)
                }
                
                Text(place.place_SCO ?? "")
                    .font(.title)
                
                Group {
                    DetailMapView(place: place)
                }
                .padding(.horizontal)
                
            } //: VSTACK
            .navigationBarTitle(place.place_EN, displayMode: .inline)
            
        } //: SCROLL
        
    }
}

struct PlaceDetailView_Previews: PreviewProvider {
    static let places: [Place] = Bundle.main.decode("places.json")

    
    static var previews: some View {
        NavigationView {
            PlaceDetailView(place: places[0])
        }
    }
}
