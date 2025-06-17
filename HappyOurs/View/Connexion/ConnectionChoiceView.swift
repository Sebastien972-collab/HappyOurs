//
//  ConnectionChoiceView.swift
//  HappyOurs
//
//  Created by Arnaud Hayon on 12/06/2025.
//

import SwiftUI

struct ConnectionChoiceView: View {
    
    @ObservedObject var manager: ConnexionManager
    @EnvironmentObject var userManager: UserManager
    @State private var signUpViewIsPresented: Bool = false
    @State private var signInViewIsPresented: Bool = false
    var body: some View {
        
        NavigationStack {
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
                    
                    ConnexionButtonView(title: "Connexion", action: {
                        manager.manager = userManager
                        manager.currentConnexionType = .signIn
                        signInViewIsPresented.toggle()
                    })
                    .navigationDestination(isPresented: $signInViewIsPresented) {
                        ConnectionView(manager: manager )
                        
                    }
                    

                    Button {
                        manager.manager = userManager
                        manager.currentConnexionType = .signUp
                        signUpViewIsPresented.toggle()
                    }label : {
                        Text("Inscription ")
                            .foregroundStyle(.white)
                            .font(.system(size: 18, design: .default))
                            .underline()
                    }
                    .navigationDestination(isPresented: $signUpViewIsPresented) {
                        ConnectionView(manager: manager )}
                    
                    Text("By: Arnaud, Carole, Dembo, Sébastien")
                        .foregroundStyle(.newBeige)
                        .font(.system(size: 14, weight: .bold, design: .default))
                        .padding(.top)
                    
                }
            }
            .environmentObject(userManager)
        }
        
    }
    
}

#Preview {
    NavigationStack {
        ConnectionChoiceView(manager: .init(manager: .init()))
            .environmentObject(UserManager())
    }
}
