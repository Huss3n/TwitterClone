//
//  UsersCountView.swift
//  TwitterClone
//
//  Created by Muktar Hussein on 04/11/2022.
//

import SwiftUI

struct UsersCountView: View {
    var body: some View {
        HStack(spacing: 4){
            Text("200")
                .font(.subheadline).bold()
            Text("Following")
                .font(.caption)
                .foregroundColor(Color(.gray))
            HStack(spacing: 4){
                Text("600")
                    .font(.subheadline).bold()
                Text("Followers")
                    .font(.caption)
                    .foregroundColor(Color(.gray))
            }
        }
    }
}

struct UsersCountView_Previews: PreviewProvider {
    static var previews: some View {
        UsersCountView()
    }
}
