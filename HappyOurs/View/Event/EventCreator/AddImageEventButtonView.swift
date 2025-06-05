//
//  AddImageEventButtonView.swift
//  HappyOurs
//
//  Created by Sébastien DAGUIN  on 02/06/2025.
//

import SwiftUI
///A image with a camera SFSymbols
struct AddImageEventButtonView: View {
    var action: () -> Void
    
    var body: some View {
        Button {
            
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.newBeige)
                    .overlay {
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.darkYellow, lineWidth: 1)
                        
                    }
                    .frame(width: 360, height: 126)
                    .padding()
                VStack(spacing: 10) {
                    Image("cameraImage")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .padding(.bottom, 5)
                    Text("Ajouter une photo ")
                        .foregroundStyle(.black)
                }
            }
        }

    }
}

#Preview {
    AddImageEventButtonView(action: {})
}
