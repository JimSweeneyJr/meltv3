//
//  ContentView.swift
//  MELT
//
//  Created by James Sweeney on 5/6/23.
//

import SwiftUI
import Amplify

struct ContentView: View {
    var body: some View {
        VStack {
            
            CardsSection()
            FooterSection()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
