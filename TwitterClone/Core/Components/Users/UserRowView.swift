//
//  UserRowView.swift
//  TwitterClone
//
//  Created by Muktar Hussein on 04/11/2022.
//

import SwiftUI

struct UserRowView: View {
    var body: some View {
        HStack(spacing: 10){
            Circle()
                .frame(width: 48, height: 48)
            
            VStack(alignment: .leading, spacing: 4){
                Text("Hussein Aisak").bold()
                    .font(.subheadline)
                    .foregroundColor(.black)
                
                Text("huss3n")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            Spacer()
        }
        .padding(.horizontal)
        .padding(.vertical, 4)
    }
}

struct UserRowView_Previews: PreviewProvider {
    static var previews: some View {
        UserRowView()
    }
}
