//
//  LoginView.swift
//  TwitterClone
//
//  Created by Muktar Hussein on 08/11/2022.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    @EnvironmentObject var viewModel: AuthViewModel
    var body: some View {
        // main container
        VStack{
            // headerview
            VStack(alignment:.leading){
                HStack{Spacer()}
                Text("Hello.")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                
                Text("Welcome back")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
            }
            .frame(height: 260)
            .padding(.leading)
            .background(Color(.systemBlue))
            .foregroundColor(.white)
            .clipShape(roundedShape(corners: [.bottomRight]))
            
            VStack(spacing: 40){
                InputFields(imageName: "envelope", placeholderText: "Email", text: $email)
                InputFields(imageName: "lock", placeholderText: "Password", text: $password)
            }
            .padding(.horizontal, 32)
            .padding(.vertical, 44)
            
            HStack{
                Spacer()
                NavigationLink{
                    Text("reset password view")
                }label: {
                    Text("Forgot password?")
                        .font(.caption)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(.systemBlue))
                        .padding(.top)
                        .padding(.trailing, 35)
                }
            }
            
            Button {
                viewModel.login(withEmail: email, password: password)
            } label: {
                Text("Sign In")
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
                SignupView()
            }label: {
                HStack{
                    Text("Don't have an account?")
                        .font(.footnote)
                    Text("Sign Up")
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

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
