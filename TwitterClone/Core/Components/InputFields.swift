//
//  InputFields.swift
//  TwitterClone
//
//  Created by Muktar Hussein on 08/11/2022.
//

import SwiftUI

struct InputFields: View {
    let imageName: String
    let placeholderText: String
    @Binding var text: String
    var body: some View {
        VStack{
            HStack{
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundColor(Color(.darkGray))
                
                TextField(placeholderText, text: $text)
            }
            
            Divider()
                .background(Color(.darkGray))
        }
    }
}

struct InputFields_Previews: PreviewProvider {
    static var previews: some View {
        InputFields(imageName: "envelope", placeholderText: "Email", text: .constant(""))
    }
}
