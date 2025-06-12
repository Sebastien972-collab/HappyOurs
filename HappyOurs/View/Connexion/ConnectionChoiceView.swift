//
//  ConnectionChoiceView.swift
//  HappyOurs
//
//  Created by Arnaud Hayon on 12/06/2025.
//

import SwiftUI

struct ConnectionChoiceView: View {
    
    @ObservedObject var manager: ConnexionManager
    
    var body: some View {
        
        ZStack {
            Color.coffeeBrown200
                .ignoresSafeArea(.all)
            VStack {
                Spacer()
                VStack {
                    Image(.logoApp)
                        .resizable()
                        .frame(width: 200, height: 200)
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                    Text("HappyOurs")
                        .foregroundStyle(.white)
                        .font(.system(size: 30, weight: .bold, design: .default))
                }
                Spacer()
                ConnexionButtonView(title: "Inscription", action: {
                    
                })
                ConnexionButtonView(title: "Connection", color: .tagadaPink50, action: {})
            }
        }
        
    }
    
}

#Preview {
    ConnectionChoiceView(manager: .init(manager: .init()))

}
