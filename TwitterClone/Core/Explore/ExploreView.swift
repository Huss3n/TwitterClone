//
//  ExploreView.swift
//  TwitterClone
//
//  Created by Muktar Hussein on 30/10/2022.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        VStack{
            Spacer()
            Text("Explore View")
            Spacer()
            Circle()
                .foregroundColor(.blue)
                .padding(.vertical)
            Spacer()
            Image(systemName: "square.and.arrow.up.fill")
            Spacer()
        }
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}
