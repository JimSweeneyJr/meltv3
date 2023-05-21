//
//  ConfirmationView.swift
//  Melt-v2
//
//  Created by James Sweeney on 5/20/23.
//

import SwiftUI
import Amplify

struct ConfirmationView: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    @State var confirmationCode = ""
    
    let username: String
    
    var body: some View {
        VStack {
            Text("Username: \(username)")
            TextField("Confrimation Code", text: $confirmationCode)
            
            Button("Confirm", action: {})
            
        }
        .padding()
    }
}

struct ConfirmationView_Previews: PreviewProvider {
    static var previews: some View {
        ConfirmationView(username: "Jim Sweeney")
    }
}
