//
//  ContentView.swift
//  DoricTiles
//
//  Created by Andrew Sage on 28/11/2020.
//

import SwiftUI

struct ContentView: View {
    
    let places: [Place] = Bundle.main.decode("places.json")
    
    var body: some View {
        NavigationView {
            Group {
                List {
                    ForEach(places) { place in
                        NavigationLink(destination: PlaceDetailView(place: place)) {
                            PlaceListItemView(place: place)
                        } //: LINK
                    } //: LOOP
                    
                    CreditsView()
                        .modifier(CenterModifier())
                } //: LIST
            } //: GROUP
            .navigationBarTitle("Places", displayMode: .large)
        } //: NAVIGATION
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
