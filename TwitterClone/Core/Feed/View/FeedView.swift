//
//  FeedView.swift
//  TwitterClone
//
//  Created by Muktar Hussein on 30/10/2022.
//

import SwiftUI

struct FeedView: View {
    @State private var showNewTweetView = false
    var body: some View {
        // creating a list of tweets
        ZStack(alignment: .bottomTrailing) {
            ScrollView{
                //#update("update function")
                LazyVStack{
                    // creates a list in the view
                    ForEach(0 ... 20, id :\.self){ _ in
                        TweetsRowView()
                            .padding()
                        
                    }
                }
            }
            
            Button {
                showNewTweetView.toggle()
            } label: {
                Image("tweetImage")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
                    .padding()
                    .fullScreenCover(isPresented: $showNewTweetView) {
                        NewTweetView()
                    }
            }
            .clipShape(Circle())
            .padding()

        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
