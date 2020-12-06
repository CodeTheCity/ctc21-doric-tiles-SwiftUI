//
//  PlaceListItemView.swift
//  DoricTiles
//
//  Created by Andrew Sage on 28/11/2020.
//

import SwiftUI

struct PlaceListItemView: View {
    let place: Place
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Text(place.place_EN)
                Spacer()
                Text("Scots")
                    .font(.caption)
                Text(place.place_SCO ?? "")
                    .multilineTextAlignment(.leading)
            } //: HSTACK
        } //: VSTACL
    }
}

struct PlaceListItemView_Previews: PreviewProvider {
    static let places: [Place] = Bundle.main.decode("places.json")

    
    static var previews: some View {
        PlaceListItemView(place: places[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
