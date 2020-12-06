//
//  MapAnnotationView.swift
//  DoricTiles
//
//  Created by Andrew Sage on 28/11/2020.
//

import SwiftUI

struct MapAnnotationView: View {
    
    var location: Place
    @State private var animation: Double = 0.0
    
    
    var body: some View {
        ZStack {
            Circle()
                .fill(location.place_SCO != nil ? Color.accentColor : Color.red)
                .frame(width: 54, height: 54, alignment: .center)
            
            
            
            Circle()
                .stroke(location.place_SCO != nil ? Color.accentColor : Color.red, lineWidth: 1)
                .frame(width: 52, height: 52, alignment: .center)
                .scaleEffect(1 + CGFloat(animation))
                .opacity(1 - animation)
            
            if location.image != nil {
                RemoteImage(url: location.image!)
                    .scaledToFill()
                    .frame(width: 48, height: 48, alignment: .center)
                    .clipShape(Circle())
            }
        } //: ZSTACK
        .onAppear{
            withAnimation(Animation.easeOut(duration: 2).repeatForever(autoreverses: false)) {
                animation = 1
            }
        }
    }
}

struct MapAnnotationView_Previews: PreviewProvider {
    static let locations: [Place] = Bundle.main.decode("places.json")
    
    static var previews: some View {
        MapAnnotationView(location: locations[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
