//
//  CustomImage.swift
//  Doctor
//
//  Created by Elver Mayta Hernández on 26/01/25.
//

import SwiftUI

struct CustomImage: View {
    var imageName: String
    var width: CGFloat = 60
    var height: CGFloat = 60
    var cornerRadius: CGFloat = 0
    var backgroundColor: Color? = nil
    var overlayColor: Color? = nil
    var borderColor: Color? = nil
    var borderWidth: CGFloat = 0
    var shadowColor: Color? = nil
    var shadowRadius: CGFloat = 0
    var contentMode: ContentMode = .fit
    var padding: EdgeInsets = .init()
    
    var body: some View {
        Image(imageName)
            .resizable()
            .aspectRatio(contentMode: contentMode)
            .frame(width: width, height: height)
            .background(backgroundColor)
            .cornerRadius(cornerRadius)
            .overlay(
                RoundedRectangle(cornerRadius: cornerRadius)
                    .stroke(borderColor ?? .clear, lineWidth: borderWidth)
            )
            .shadow(color: shadowColor ?? .clear, radius: shadowRadius)
            .clipped()
            .padding(padding)
    }
}

#Preview {
    CustomImage(imageName: "camera")
}
