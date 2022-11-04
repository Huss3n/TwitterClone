//
//  TweetsRowView.swift
//  TwitterClone
//
//  Created by Muktar Hussein on 30/10/2022.
//
// needs to have an image
// the tweets texts
//row of action buttons
// we need to contain it in a vstack

import SwiftUI

struct TweetsRowView: View {
    var body: some View {
        VStack(alignment: .leading){
            // we add the profile image and user info
            HStack(alignment: .top, spacing: 12){
                Circle()
                    .frame(width: 56, height: 56)
                    .foregroundColor(Color(.systemBlue))
                // user info and tweet caption
                VStack(alignment: .leading, spacing: 4){
                    // user info
                    HStack{
                        Text("Hussein")
                            .font(.subheadline).bold()
                        Text("@huss3n")
                            .foregroundColor(.gray)
                            .font(.caption)
                        
                        Text("1W")
                            .foregroundColor(.gray)
                            .font(.caption)
                        
                    }
                    // tweet caption
                    Text("We believe in the best available deeds")
                        .font(.subheadline)
                        .multilineTextAlignment(.leading)
                }
            }
            // action buttons
            HStack{
                Button {
                    //
                } label: {
                    Image(systemName: "bubble.left")
                        .font(.subheadline)
                }
                Spacer()
                Button {
                    //
                } label: {
                    Image(systemName: "arrow.2.squarepath")
                        .font(.subheadline)
                }
                Spacer()

                Button {
                    //
                } label: {
                    Image(systemName: "heart")
                        .font(.subheadline)
                }
                Spacer()

                Button {
                    //
                } label: {
                    Image(systemName: "bookmark")
                        .font(.subheadline)
                }
 

            }
            .padding()
            .foregroundColor(.gray)
            Divider()
        }
        .padding()
    }
    
    struct TweetsRowView_Previews: PreviewProvider {
        static var previews: some View {
            TweetsRowView()
        }
    }
}
