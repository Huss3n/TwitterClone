//
//  roundedShape.swift
//  TwitterClone
//
//  Created by Muktar Hussein on 08/11/2022.
// for folding the edge of the blue background in login screen

import SwiftUI

struct roundedShape: Shape{
    var corners : UIRectCorner
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: 80, height: 80))
        
        return Path(path.cgPath)
    }
}
