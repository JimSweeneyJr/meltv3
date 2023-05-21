//
//  meltv3App.swift
//  meltv3
//
//  Created by James Sweeney on 5/20/23.
//

import SwiftUI
import Amplify
import AWSCognitoAuthPlugin

@main
struct Meltv3App: App {
    
    @ObservedObject var sessionManager = SessionManager()
    
    init() {
            do {
                try Amplify.add(plugin: AWSCognitoAuthPlugin())
                try Amplify.configure()
                print("Amplify configured with auth plugin")
            } catch {
                print("Failed to initialize Amplify with \(error)")
            }
        }
    
    var body: some Scene {
        WindowGroup {
//            SplashScreenView()
            switch sessionManager.authState {
            case .login:
                LoginView()

            case .signUp:
                SignUpView()

            case .confirmationCode(let username):
                ConfirmationView(username: username)

            case .session(let user):
                SessionView(user: user)
            }
        }
    }
    
    
}
