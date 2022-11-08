//
//  SignupView.swift
//  TwitterClone
//
//  Created by Muktar Hussein on 08/11/2022.
//

import SwiftUI

struct SignupView: View {
    @State private var email = ""
    @State private var userName = ""
    @State private var fullName = ""
    @State private var password = ""
    var body: some View {
        //main container
        VStack{
            // sub container
            VStack(alignment:.leading){
                HStack{Spacer()}
                Text("Get started.")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
//                    .foregroundColor(Color(.systemBlue))
//                    .background(Color(.white))
                Text("Create your account")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    
            }
            .frame(height: 260)
            .padding(.leading)
            .background(Color(.systemBlue))
            .foregroundColor(.white)
            .clipShape(roundedShape(corners: [.bottomRight]))
//            .padding(.leading)
            
            VStack(spacing: 40){
                InputFields(imageName: "envelope", placeholderText: "Email", text: $email)
                InputFields(imageName: "person", placeholderText: "Username", text: $userName)
                InputFields(imageName: "person", placeholderText: "Full Name", text: $fullName)
                InputFields(imageName: "lock", placeholderText: "Password", text: $password)
            }
            .padding(.horizontal, 32)
            .padding(.vertical, 50)
            
            Button {
                print("tapped")
            } label: {
                Text("Sign Up")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: 340, height: 50)
                    .background(Color(.systemBlue))
                    .clipShape(Capsule())
                    .padding()
            }
            .shadow(color: .gray.opacity(1), radius: 10, x: 0, y: 0)
            
            
            Spacer()
            NavigationLink{
                LoginView()
            }label: {
                HStack{
                    Text("Already have an account?")
                        .font(.footnote)
                    Text("Sign In")
                        .font(.footnote)
                        .foregroundColor(Color(.systemBlue))
                }
            }
            .padding(.bottom, 40)
            .foregroundColor(Color(.systemBlue))
        }
        .ignoresSafeArea()
    }
}

struct SignupView_Previews: PreviewProvider {
    static var previews: some View {
        SignupView()
    }
}
