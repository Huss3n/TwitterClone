//
//  TextArea.swift
//  TwitterClone
//
//  Created by Muktar Hussein on 05/11/2022.
//

import SwiftUI

struct TextArea: View {
    // we have to pass the text from the tweet
    @Binding var text: String
    let placeholder: String
    
    // initializing the binding property
    init(_ placeHolder: String, text:Binding<String>){
        self.placeholder = placeHolder
        self._text = text
        UITextView.appearance().backgroundColor = .clear
    }
    var body: some View {
        ZStack(alignment: .topLeading){
            
            if text.isEmpty{
                Text(placeholder)
                    .foregroundColor(Color(.placeholderText))
                    .padding(.horizontal, 8)
                    .padding(.vertical, 12)
            }
            TextEditor(text: $text)
                .padding(4)
        }
        .font(.body)
    }
}


