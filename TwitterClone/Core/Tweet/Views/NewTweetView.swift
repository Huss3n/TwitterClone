//
//  NewTweetView.swift
//  TwitterClone
//
//  Created by Muktar Hussein on 05/11/2022.
//

import SwiftUI

struct NewTweetView: View {
    @State private var caption = ""
    // var that recognizes the present state of the application
    @Environment(\.presentationMode) var presentationMode
    
    
    var body: some View {
        VStack{
            HStack{
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Text("Cancel")
                        .foregroundColor(Color(.systemBlue))
                }
                Spacer()
                
                Button {
                    print("Tweet")
                } label: {
                    Text("Tweet")
                        .bold()
                        .padding(.horizontal)
                        .padding(.vertical, 10)
                        .background(Color(.systemBlue))
                        .foregroundColor(Color.white)
                        .clipShape(Capsule())
                }


                
            }
            .padding()
            
            HStack(alignment: .top){
                Circle()
                    .frame(width: 64, height: 64)
                
               TextArea("What's happening? ", text: $caption)
                
            }
            .padding()
        }
    }
}

struct NewTweetView_Previews: PreviewProvider {
    static var previews: some View {
        NewTweetView()
    }
}
