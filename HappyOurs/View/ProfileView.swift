//
//  ProfileView.swift
//  HappyOurs
//
//  Created by Arnaud Hayon on 30/05/2025.
//

import SwiftUI
import FestivityUIKit

struct ProfileView: View {
    @EnvironmentObject var userManager: UserManager
    
    let manager: ParticipantManager = ParticipantManager(manager: UserManager())
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack (alignment: .leading){
                    ZStack (alignment: .bottomLeading){
                        Image(manager.currentUser.currentImageName ?? "default")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 300)
                            .clipped()
                        
                        
                        
                        HStack {
                            Text(manager.currentUser.username)
                                .font(.title)
                                .foregroundColor(.white)
                                .shadow(radius: 15)
                                .padding()
                        }
                        
                    }
                    
                    VStack {
                        Text ("'' \(manager.currentUser.punchline) ''")
                            .foregroundColor(.black)
                            .bold()
                            .padding(10)
                            .frame(maxWidth: .infinity, maxHeight: 60)
                            .background(Color(.newBeige))
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            .padding(.horizontal, 15)
                        
                        
                        HStack {
                            VStack {
                                Image(manager.currentUser.drinkingHabit?.imageName ?? "cocktailPicto")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                Text(manager.currentUser.drinkingHabit?.description ?? "-")
                            }
                            .foregroundColor(.black)
                            .bold()
                            .padding(10)
                            .frame(width: 110, height: 80)
                            .background(Color.newBeige)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            
                            Spacer()
                            VStack {
                                Image("personsPicto")
                                Text("\(manager.currentUser.numberOfParties ?? 0) soirées")
                            }
                            .foregroundColor(.black)
                            .bold()
                            .padding(10)
                            .frame(width: 110, height: 80)
                            .background(Color.newBeige)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            
                            Spacer()
                            VStack {
                                Image("placerPicto")
                                Text(manager.currentUser.ville)
                            }
                            .foregroundColor(.black)
                            .bold()
                            .padding(10)
                            .frame(width: 110, height: 80)
                            .background(Color.newBeige)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            
                        }
                        .padding(.horizontal, 15)
                        
                    }
                    VStack (alignment: .leading){
                        Text("Description")
                            .padding(.leading, 15)
                            .font(.title2)
                        Text(manager.currentUser.description ?? "-")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding()
                            .background(Color.newBeige)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            .padding(.horizontal, 15)
                    }
                    
                    VStack (alignment: .leading) {
                        PreferenceView(imageName: manager.currentUser.favoriteCocktail?.imageName ?? "cocktail-1", text: "Mon cocktail préféré : \( Cocktail.cocktailDb.first!.name)")
                        
                        
                        CustomDivider()
                        
                        PreferenceView(imageName:"event-3", text: "Mes sorties préférées : \(manager.currentUser.favortieEvent.rawValue)")
                        
                        CustomDivider()
                        
                        PreferenceView(imageName:"event-1", text: "Je préfère les \(manager.currentUser.favortieGroups.rawValue)" )
                    }
                    .padding(.top, 20)
                    
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
                
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink {
                        SettingsView()
                    } label: {
                        Image(systemName: "gear")
                            .foregroundStyle(.black)
                        
                    }

                }
            }
        }
        .environmentObject(userManager)
    }
}

#Preview {
    
        ProfileView()
            .environmentObject(UserManager())
}
