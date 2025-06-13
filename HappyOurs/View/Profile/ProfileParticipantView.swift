//
//  ProfileView.swift
//  HappyOurs
//
//  Created by Arnaud Hayon on 30/05/2025.
//

import SwiftUI
import FestivityUIKit

struct ProfileParticipantView: View {
    @EnvironmentObject var userManager: UserManager

    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false) {
                VStack (alignment: .leading){
                    ZStack (alignment: .bottomLeading){
                        Image(userManager.currentUser.currentImageName ?? "seb")
                            .resizable()
                            .scaledToFill()
                            .frame(maxWidth: .infinity, maxHeight: 300)
                            .clipped()
                            .ignoresSafeArea(.container, edges: .top)
                        HStack {
                            Text(userManager.currentUser.username)
                                .font(.title)
                                .foregroundColor(.white)
                                .shadow(radius: 15)
                                .padding()
                        }
                    }
                    if let user = userManager.currentUser as? Participant {
                        VStack {
                            Text ("'' \(user.punchline) ''")
                                .foregroundColor(.black)
                                .bold()
                                .padding(10)
                                .frame(maxWidth: .infinity, maxHeight: 60)
                                .background(Color(.newBeige))
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                .padding(.horizontal, 15)
                            HStack {
                                VStack {
                                    Image(user.drinkingHabit?.imageName ?? "cocktailPicto")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                    Text(user.drinkingHabit?.description ?? "-")
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
                                    Text("\(user.events.count) soirées")
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
                                    Text(userManager.currentUser.ville)
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
                            Text(userManager.currentUser.description ?? "-")
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding()
                                .background(Color.newBeige)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                .padding(.horizontal, 15)
                        }
                        
                        VStack (alignment: .leading) {
                            PreferenceCocktailView(imageName: user.favoriteCocktail?.imageName ?? "cocktail-1", text: "Mon cocktail préféré : \( Cocktail.cocktailDb.first!.name)")
                            
                            
                            CustomDivider()
                            
                            PreferenceEventsView(imageName:"event-3", text: "Mes sorties préférées : \(user.favortieEvent.rawValue)")
                            
                            CustomDivider()
                            
                            PreferenceEventsView(imageName:"event-1", text: "Je préfère les \(user.favortieGroups.rawValue)" )
                        }
                        .padding(.top, 20)
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
