//
//  SessionView.swift
//  Melt-v2
//
//  Created by James Sweeney on 5/20/23.
//

import SwiftUI
import Amplify

struct SessionView: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    let user: AuthUser
    
    var body: some View {
        VStack {
            Spacer()
            Text("You have signed in successfully")
                .font(.largeTitle)
                .multilineTextAlignment(.center)
            
            Spacer()
            Button("Sign Out", action: {})
        }
    }
    
    
    
}


//struct SessionView_Previews: PreviewProvider {
//    static var previews: some View {
//        SessionView()
//    }
//}
