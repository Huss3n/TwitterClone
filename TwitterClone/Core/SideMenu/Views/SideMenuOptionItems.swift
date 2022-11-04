//
//  SideMenuOptionItems.swift
//  TwitterClone
//
//  Created by Muktar Hussein on 05/11/2022.
//

import SwiftUI

struct SideMenuOptionItems: View {
    var viewModel : SideMenuViewModel
    var body: some View {
        HStack(spacing: 15){
            Image(systemName: viewModel.imageName)
                .font(.headline)
                .foregroundColor(.gray)
            
            Text(viewModel.description)
                .foregroundColor(.black)
                .font(.callout)
            Spacer()
        }
        .padding(.horizontal)
        .frame(height: 50)
    }
}

struct SideMenuOptionItems_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuOptionItems(viewModel: .profile)
    }
}
