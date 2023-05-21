//
//  SwiftUIView.swift
//  MeltFoodApp
//
//  Created by James Sweeney on 5/5/23.
//


import SwiftUI
import Amplify

struct CardsSection: View {
    var body: some View {
        ZStack{
            ForEach(Card.data.reversed()) { card in
                CardView(card: card)
            }
        }
        .padding(8)
        
        .zIndex(1.0)
    }
}

struct CardsSection_Previews: PreviewProvider {
    static var previews: some View {
        CardsSection()
    }
}
