//
//  CustomButton.swift
//  Doctor
//
//  Created by Elver Mayta Hernández on 26/01/25.
//

import SwiftUI

struct CustomButton: View {
    var title: String
    var action: () -> Void
    var backgroundColor: Color = .black
    var textColor: Color = .white
    var width: CGFloat = 300
    var height: CGFloat = 40
    var cornerRadius: CGFloat = 25
    var padding: EdgeInsets = .init()
    
    var body: some View {
        Button(action: {
            action()
        }) {
            Text(title)
                .frame(width: width, height: height)
                .background(backgroundColor)
                .cornerRadius(cornerRadius)
                .foregroundColor(textColor)
                .padding(padding)
        }
    }
}

#Preview {
    CustomButton(title: "hola", action: {})
}
