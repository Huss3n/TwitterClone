//
//  AuthViewModel.swift
//  TwitterClone
//
//  Created by Muktar Hussein on 09/11/2022.
//

import SwiftUI
import Firebase

class AuthViewModel: ObservableObject{
    // store user login in the var
    @Published var userSession: FirebaseAuth.User?
    
    init(){
        self.userSession = Auth.auth().currentUser
        
    }
    
    func login(withEmail email: String, password: String){
        
    }
    func register(withEmail email: String, password: String, fullname: String, username: String){
        // grabbing the properties and uploading to database
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            if let error = error{
                print("Failed to register with error \(error.localizedDescription)")
                return
            }
            // authenticated the user
            guard let user = result?.user else{return}
            self.userSession = user
            
            
                    
        }
        
    }
    
}
