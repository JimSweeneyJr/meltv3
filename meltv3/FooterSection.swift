//
//  SwiftUIView.swift
//  MeltFoodApp
//
//  Created by James Sweeney on 5/5/23.
//


import SwiftUI
import Amplify

struct FooterSection: View {
    var body: some View {
        HStack(spacing:0) {
            Button(action: {}) {
                Image(systemName: "trash.circle")
                    .font(.system(size: 40.0))
                    .foregroundColor(.orange)
                    .padding(.top, -8)
                    .padding(.trailing, 50)
            }
            
            Button(action: {}) {
                Image(systemName: "heart.circle")
                    .font(.system(size: 40.0))
                    .foregroundColor(.orange)
                    .padding(.top, -8)
                    .padding([.leading, .trailing] , 50)
            }
            
            Button(action: {}) {
                Image(systemName: "calendar.circle")
                    .font(.system(size: 40.0))
                    .foregroundColor(.orange)
                    .padding(.top, -8)
                    .padding(.leading, 50)
            }
        }
    }
}

struct FooterSection_Previews: PreviewProvider {
    static var previews: some View {
        FooterSection()
    }
}
