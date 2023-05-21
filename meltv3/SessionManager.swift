//
//  SwiftUIView.swift
//  Melt-v2
//
//  Created by James Sweeney on 5/19/23.
//

import SwiftUI
import Amplify

enum AuthState { //Auth states
    case signUp
    case login
    case confirmationCode(username: String)
    case session(user: AuthUser)
}

final class SessionManager: ObservableObject {
    @Published var authState: AuthState = .login  //login by default
    
    //CHECK STATUS OF USER HERE
    func fetchCurrentAuthSession() async {
        do {
            let session = try await Amplify.Auth.fetchAuthSession()
            print("Is user signed in - \(session.isSignedIn)")
        } catch let error as AuthError {
            print("Fetch session failed with error \(error)")
        } catch {
            print("Unexpected error: \(error)")
        }
    }
    
    func showSignUp() {
        authState = .signUp
    }
    
    func showLogin() {
        authState = .login
    }
    
    func signUp(username: String, email: String, password: String) async {
        let userAttributes = [AuthUserAttribute(.email, value: email)]
        let options = AuthSignUpRequest.Options(userAttributes: userAttributes)
        do {
            let signUpResult = try await Amplify.Auth.signUp(
                username: username,
                password: password,
                options: options
            )
            if case let .confirmUser(deliveryDetails, _, userId) = signUpResult.nextStep {
                print("Delivery details \(String(describing: deliveryDetails)) for userId: \(String(describing: userId)))")
                
//                DispatchQueue.main.async {
//                    self.authState = .confirmationCode(username: username)
//                }
            } else {
                print("SignUp Complete")
            }
        } catch let error as AuthError {
            print("An error occurred while registering a user \(error)")
        } catch {
            print("Unexpected error: \(error)")
        }

    }
    
}
