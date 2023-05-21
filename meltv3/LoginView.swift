//
//  LoginView.swift
//  Melt-v2
//
//  Created by James Sweeney on 5/20/23.
//

import SwiftUI

struct LoginView: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    @State var username = ""
    @State var password = ""
    
    var body: some View {
        VStack {
            Spacer()
            
            TextField("Username", text: $username)
            SecureField("Password", text: $password)
            Button("Login", action: {})
            
            Spacer()
            Button("Don't have an account? Sign Up.", action: {})
        }
        .padding()
    }
    
}
    
    
    
//
//struct LoginView_Previews: PreviewProvider {
//    static var previews: some View {
//        LoginView()
//    }
//}
