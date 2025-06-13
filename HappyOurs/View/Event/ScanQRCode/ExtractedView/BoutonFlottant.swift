//
//  BoutonFlottant.swift
//  HappyOurs
//
//  Created by caroletm on 12/06/2025.
//

import SwiftUI

struct BoutonFlottant: View {
    
    @State private var manager = EventManager()
    @State private var isPresented: Bool = false
    
    var body: some View {
        Button(action: {
            isPresented.toggle()
        }, label: {
            Image(systemName: manager.currentUser is Participant ? "qrcode" : "qrcode.viewfinder")
                .resizable()
                .frame(width: 35, height: 35)
                .padding(15)
                .foregroundStyle(.white)
                .background(Color.darkYellow200)
                .clipShape(Circle())
        })
        .sheet(isPresented: $isPresented) {
            QRCodeView()
                .presentationDetents([.medium, .large])
        }
        
    }
}

#Preview {
    BoutonFlottant()
}
