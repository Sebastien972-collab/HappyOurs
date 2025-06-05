//
//  CustomTextField.swift
//  HappyOurs
//
//  Created by Sébastien DAGUIN  on 02/06/2025.
//

import SwiftUI

struct CustomTextField: View {
    @Binding var text: String
    var placeholder: String = "Nom de l'événement"
    var body: some View {
        TextField(placeholder, text: $text)
            .padding()
            .background {
                RoundedRectangle(cornerRadius: 6)
                    .fill(Color.newBeige)
            }
        
    }
}

#Preview {
    CustomTextField(text: .constant(""))
        .padding()
}
