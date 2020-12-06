//
//  SettingsView.swift
//  DoricTiles
//
//  Created by Andrew Sage on 28/11/2020.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 8) {
            Text("Created as part of Code the City 21")
                .font(.headline)
                .multilineTextAlignment(.center)
            
            Text("Data sourced from Wikidata")
                .font(.subheadline)
                .multilineTextAlignment(.center)
            
            Spacer()
        }
        .padding()
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
