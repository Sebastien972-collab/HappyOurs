//
//  ConnexionButtonView.swift
//  HappyOurs
//
//  Created by Arnaud Hayon on 12/06/2025.
//

import SwiftUI

struct ConnexionButtonView: View {
    public var title: String
    var color: Color = .darkYellow50
    public var action: () -> Void
    
    
    public var body: some View {
        Button(action: action) {
            Text(title)
                .padding()
                .foregroundStyle(Color.coffe_brown)
                .frame(maxWidth: 300, maxHeight: 40)
                .background(color)
                .clipShape(RoundedRectangle(cornerRadius: 10))
        }
    }
}

#Preview {
    VStack {
        ConnexionButtonView(title: "Inscription", action: {})
        ConnexionButtonView(title: "Connection", color: .tagadaPink50, action: {})
    }
}
