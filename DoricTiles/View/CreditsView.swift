//
//  CreditsView.swift
//  DoricTiles
//
//  Created by Andrew Sage on 28/11/2020.
//

import SwiftUI

struct CreditsView: View {
    var body: some View {
        GroupBox {
            VStack {
                Text("Created as part of Code the City 21")
                    .font(.footnote)
                    .multilineTextAlignment(.center)
                
                Text("Data sourced from Wikidata")
                    .font(.footnote)
                    .multilineTextAlignment(.center)
            }
            .padding()
        }
    }
}

struct CreditsView_Previews: PreviewProvider {
    static var previews: some View {
        CreditsView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
