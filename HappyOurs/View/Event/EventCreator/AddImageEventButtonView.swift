//
//  AddImageEventButtonView.swift
//  HappyOurs
//
//  Created by Sébastien DAGUIN  on 02/06/2025.
//

import SwiftUI
///A image with a camera SFSymbols
struct AddImageEventButtonView: View {
    var systemImage: String?
    var action: () -> Void
    var body: some View {
        Button {
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.newBeige)
                    .overlay {
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.darkYellow, lineWidth: 1)
                        
                    }
                    .frame(maxWidth: .infinity, maxHeight: 200)
                    .padding()
                VStack(spacing: 10) {
                    if let systemImage = systemImage {
                        Image(systemName: systemImage)
                            .resizable()
                            .frame(width: 40, height: 40)
                            .padding(.bottom, 5)
                            .foregroundStyle(.darkYellow200)
                    } else {
                        Image(.camera)
                            .resizable()
                            .frame(width: 40, height: 40)
                            .padding(.bottom, 5)
                        
                    }
                    Text("Ajouter une photo ")
                        .foregroundStyle(.black)
                }
            }
        }
        
    }
}

#Preview {
    AddImageEventButtonView(systemImage: "plus.circle", action: {})
}
