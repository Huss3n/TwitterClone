//
//  SideMenuView.swift
//  TwitterClone
//
//  Created by Muktar Hussein on 04/11/2022.
//

import SwiftUI

struct SideMenuView: View {
    var body: some View {
        VStack {
            VStack(alignment: .leading){
                Circle()
                    .frame(width: 48, height: 48)
                    .padding()
                VStack(alignment: .leading, spacing: 4){
                    Text("Hussein Aisak")
                        .font(.headline)
        
                    Text("@huss3n")
                        .font(.caption)
                        .foregroundColor(.gray)
                    
                    UsersCountView()
                        .padding(.vertical, 20)
                }
                .padding()
                
                ForEach(SideMenuViewModel.allCases, id: \.self) { option in
                    HStack(spacing: 15){
                        Image(systemName: option.imageName)
                            .font(.headline)
                            .foregroundColor(.gray)
                        
                        Text(option.description)
                            .font(.callout)
                        Spacer()
                    }
                    .padding(.horizontal)
                    .frame(height: 50)
                }
            }
            Spacer()
        }
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView()
    }
}
