//
//  ProfileView.swift
//  HappyOurs
//
//  Created by Arnaud Hayon on 30/05/2025.
//

import SwiftUI
import FestivityUIKit

struct ProfileView: View {
    
    let manager: ParticipantManager = ParticipantManager()
    
    var body: some View {
        ScrollView {
            VStack (alignment: .leading){
                ZStack (alignment: .bottomLeading){
                    Image(.caroline)
                        .resizable()
                        .scaledToFit()
                        .clipped()
                        .frame(height: 300)
                        
                                        
                    HStack {
                        Text(manager.currentParticipant.username)
                            .font(.title)
                            .foregroundColor(.white)
                            .shadow(radius: 15)
                            .padding()
                            .padding(.bottom, 10)
                        Spacer()
                    }
                }
                
                VStack {
                    Text ("'' Je ne dis jamais non à un bon mojito ''")
                        .foregroundColor(.black)
                        .bold()
                        .padding(10)
                        .frame(maxWidth: .infinity, maxHeight: 60)
                        .background(Color(.newBeige))
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .padding(.horizontal, 15)

                    
                    HStack {
                        VStack {
                            Image("cocktailPicto")
                            Text("Amatrice")
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
                            Text("25 soirées")
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
                            Text("Lyon")
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
                    Text("Graphiste de métier, curieuse de nature, j’adore les conversations qui durent plus longtemps que le cocktail dans mon verre. Si tu aimes les échanges spontanés, les soirées pleines de rires et les rencontres qui sortent du cadre, on risque bien de se comprendre.")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
//                        .multilineTextAlignment(.leading)
                        .background(Color.newBeige)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .padding(.horizontal, 15)
                }
                
                VStack (alignment: .leading) {
                    PreferenceView(imageName: manager.currentParticipant.favoriteCocktail?.imageName ?? "cocktail-1", text: "Mon cocktail préféré : \( Cocktail.cocktailDb.first!.name)")

                    
                    CustomDivider()
                    
                    PreferenceView(imageName:"event-3", text: "Mes sorties préférées : \(manager.currentParticipant.favortieEvent.rawValue)")

                    CustomDivider()
                    
                    PreferenceView(imageName:"event-1", text: "Je préfère les \(manager.currentParticipant.favortieGroups.rawValue)" )
                }
                .padding(.top, 20)
                
                HStack (alignment: .center) {
                    ConfirmationButtonView(title: "CONTACTER", action: {})
                }
                .padding(.top, 20)
                .frame(maxWidth: .infinity)
                
            }
            
        }
        .ignoresSafeArea()
        Spacer()
    }
}

#Preview {
    ProfileView()
}
