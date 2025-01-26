//
//  TextCustom.swift
//  Doctor
//
//  Created by Elver Mayta Hernández on 26/01/25.
//

import SwiftUI

struct CustomText: View {
    var content: String
    var fontSize: CGFloat = 16
    var fontWeight: Font.Weight = .regular
    var textAlignment: TextAlignment = .leading
    var foregroundColor: Color = .primary
    var padding: EdgeInsets = .init()
    var lineLimit: Int? = nil
    var multilineTextAlignment: TextAlignment = .leading
    
    var body: some View {
        Text(content)
            .font(.system(size: fontSize, weight: fontWeight))
            .foregroundColor(foregroundColor)
            .multilineTextAlignment(multilineTextAlignment)
            .lineLimit(lineLimit)
            .padding(padding)
            .frame(maxWidth: .infinity, alignment: alignment())
    }
    
    private func alignment() -> Alignment {
        switch textAlignment {
        case .leading:
            return .leading
        case .center:
            return .center
        case .trailing:
            return .trailing
        }
    }
}

#Preview {
    CustomText(content: "Hola",multilineTextAlignment: .trailing)
}
