//
//  BoutonFlottant.swift
//  HappyOurs
//
//  Created by caroletm on 12/06/2025.
//

import SwiftUI

struct BoutonFlottant: View {
    
    @State private var manager = EventManager()
    
    var body: some View {
        
        let iconName = manager.currentUser is Participant ? "qrcode" : "qrcode.viewfinder"
        
        VStack {
            Image(systemName: iconName)
                .resizable()
                .frame(width: 35, height: 35)
        }
        .padding(15)
        .foregroundStyle(.white)
        .background(Color.darkYellow200)
        .clipShape(Circle())
    }
}

#Preview {
    BoutonFlottant()
}
