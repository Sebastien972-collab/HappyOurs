//
//  ProfileView.swift
//  HappyOurs
//
//  Created by Arnaud Hayon on 30/05/2025.
//

import SwiftUI
import FestivityUIKit

struct ProfileBusinessView: View {
    @EnvironmentObject var userManager: UserManager
    @State private var eventManager = EventManager()
    
    let manager: BusinessManager = BusinessManager(manager: UserManager())

    var body: some View {
        ScrollView {
            VStack (alignment: .leading){
                ZStack (alignment: .bottomLeading){
                    Image(manager.currentUser.currentImageName ?? "default")
                        .resizable()
                        .frame(height: 300)
                        .aspectRatio(contentMode: .fit)
                        .clipped()
                                    
                        HStack {
                            Text(userManager.currentUser.username)
                                .font(.title)
                                .foregroundColor(.white)
                                .shadow(radius: 15)
                                .padding()
                        }
                }
                
                VStack {
                    HStack {
                        VStack {
                            Text("Soirées")
                            Text("\(userManager.currentUser.events.count)")
                            
                        }
                        .foregroundColor(.black)
                        .bold()
                        .padding(10)
                        .frame(width: 110, height: 80)
                        .background(Color.newBeige)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        
                        Spacer()
                        VStack {
                            Text("Participants")
                            Text("27")
                        }
                        .foregroundColor(.black)
                        .bold()
                        .padding(10)
                        .frame(width: 110, height: 80)
                        .background(Color.newBeige)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        
                        Spacer()
                        if let user = userManager.currentUser as? Business {
                            VStack {
                                Text("Cocktails")
                                Text("\(user.cocktails.count)")
                            }
                            .foregroundColor(.black)
                            .bold()
                            .padding(10)
                            .frame(width: 110, height: 80)
                            .background(Color.newBeige)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                        }
                        
                    }
                    .padding(.horizontal, 15)
                    
                }
                VStack (alignment: .leading){
                    Text("Description")
                        .padding(.leading, 15)
                        .font(.title2)
                    Text(userManager.currentUser.description ?? "-")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                        .background(Color.newBeige)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .padding(.horizontal, 15)
                }
                
                if let user = userManager.currentUser as? Business {
                    EventBusinessView(organisator: user)
                }
                
                HStack (alignment: .center) {
                    ConfirmationButtonView(title: "CONTACTER", action: {})
                }
                .padding(.top, 20)
                .frame(maxWidth: .infinity)
                
            }
            
        }
        .toolbar {
            ToolbarItem(placement: .principal) {
                Text("Mon profil")
                    .font(.title2)
                    .fontWeight(.bold)
            }
        } .navigationBarTitleDisplayMode(.inline)        .environmentObject(userManager)
        Spacer()
    }
}

#Preview {
    ProfileBusinessView()
        .environmentObject(UserManager())
}
