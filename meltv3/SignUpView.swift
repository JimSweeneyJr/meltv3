//
//  SignUpView.swift
//  Melt-v2
//
//  Created by James Sweeney on 5/20/23.
//

import SwiftUI
import Amplify

struct SignUpView: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    @State var username = ""
    @State var email = ""
    @State var password = ""
    
    
    var body: some View {
        VStack {
            Spacer()
                
            TextField("Username", text: $username)
            TextField("Email", text: $email)
            SecureField("Password", text: $password)
            Button("Sign Up", action: {})
            
            Spacer()
            Button("Already have an account? Log in", action: {})
        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}




//let userAttributes = [AuthUserAttribute(.email, value: email)]
//let options = AuthSignUpRequest.Options(userAttributes: userAttributes)
//do {
//    let signUpResult = try await Amplify.Auth.signUp(
//        username: username,
//        password: password,
//        options: options
//    )
//    if case let .confirmUser(deliveryDetails, _, userId) = signUpResult.nextStep {
//        print("Delivery details \(String(describing: deliveryDetails)) for userId: \(String(describing: userId)))")
//    } else {
//        print("SignUp Complete")
//    }
//} catch let error as AuthError {
//    print("An error occurred while registering a user \(error)")
//} catch {
//    print("Unexpected error: \(error)")
//}

//
// SIGN IN
//
//do {
//    let result = try await Amplify.Auth.signIn(
//        username: username,
//        password: password
//    )
//    print("Sign in successful: \(result.isSignedIn)")
//} catch let error as AuthError {
//    print("Sign in failed with error: \(error)")
//} catch {
//    print("Unexpected error: \(error)")
//}
//
//SIGN OUT
//
//let result = await Amplify.Auth.signOut()
//if let signOutResult = result as? AWSCognitoSignOutResult {
//    print("Local signout successful: \(signOutResult.signedOutLocally)")
//    switch signOutResult {
//    case .complete:
//        print("SignOut completed")
//    case .failed(let error):
//        print("SignOut failed with \(error)")
//    case let .partial(revokeTokenError, globalSignOutError, hostedUIError):
//        print(
//        """
//        SignOut is partial.
//        RevokeTokenError: \(String(describing: revokeTokenError))
//        GlobalSignOutError: \(String(describing: globalSignOutError))
//        HostedUIError: \(String(describing: hostedUIError))
//        """
//        )
//    }
//}
//
