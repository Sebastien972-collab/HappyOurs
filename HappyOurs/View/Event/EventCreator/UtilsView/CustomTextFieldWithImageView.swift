//
//  CustomTextFieldWithImageView.swift
//  HappyOurs
//
//  Created by Sébastien DAGUIN  on 02/06/2025.
//

import SwiftUI

struct CustomTextFieldWithImageView: View {
    let systemName: String
    var placeholder: String
    @Binding var text: String
    var body: some View {
        HStack {
            Image(systemName: systemName)
                .resizable()
                .frame(width: 30, height: 30)
                .foregroundStyle(Color.darkYellow200)
            CustomTextField(text: $text, placeholder: placeholder)
        }
    }
}

#Preview {
    CustomTextFieldWithImageView(systemName: "mappin.and.ellipse", placeholder: "Nom de l'évènement", text: .constant(""))
}
