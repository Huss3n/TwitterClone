//
//  FeedView.swift
//  TwitterClone
//
//  Created by Muktar Hussein on 30/10/2022.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        // creating a list of tweets
        ScrollView{
            //#update("update function")
            LazyVStack{
                // creates a list in the view
                ForEach(0 ... 20, id :\.self){ _ in
                    TweetsRowView()
                    
                }
            }
            
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
