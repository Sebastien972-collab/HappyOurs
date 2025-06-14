//
//  EventDetailsView.swift
//  HappyOurs
//
//  Created by Sébastien DAGUIN  on 05/06/2025.
//

import SwiftUI
import FestivityUIKit

struct EventDetailsView: View {
    
    @Binding var event: Event
    
    var body: some View {
        VStack(alignment: .leading) {
            ScrollView(showsIndicators: false) {
                VStack(alignment: .leading) {
                    Image(event.imageEventName ?? "event-1")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(maxWidth: .infinity, maxHeight: 400)
                        .clipped()
                    Text(event.name)
                        .bold()
                        .font(.title)
                        .padding()
                    
                    HStack(spacing: 15) {
                        VStack(alignment: .leading, spacing: 5) {
                            HStack {
                                Image(systemName: "calendar")
                                Text(event.dateFormatted.capitalized)
                                    .fontWeight(.medium)
                                    .font(.custom("SF Pro", size: 16))
                                    .fontWeight(.regular)
                                
                                
                            }
                            HStack {
                                Image(systemName: "mappin.and.ellipse")
                                Text(event.address)
                                    .font(.custom("SF Pro", size: 16))
                                    .fontWeight(.regular)
                                    .lineLimit(2)
                            }
                        }
                        Spacer()
                        CocktailImageView(cocktail: event.bestCocktail)
                            .padding(.horizontal)
                    }
                    .padding(.horizontal)
                    CustomDivider()
                        .padding(.top)
                    VStack(alignment: .leading) {
                        Text("\(event.participants.count) participants")
                            .font(.title2)
                            .bold()
                        ParticopantBubbleList(participants: event.participants)
                    }
                    .padding(.horizontal)
                    .padding(.bottom)
                    CustomDivider()
                    Text(event.description)
                        .padding()
                        .multilineTextAlignment(.leading)
                        .padding()
                        .background {
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color.newBeige)
                        }
                        .padding()
                    CustomDivider()
                    VStack(alignment: .leading) {
                        HStack {
                            Text("Cocktail proposé : ")
                                .font(.title2)
                            Spacer()
                            Text(event.bestCocktail.name)
                                .font(.custom("SF Pro", size: 24))
                                .fontWeight(.bold)
                        }
                    }
                    .padding()
                    CustomDivider()
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Contenu du verre : ")
                            .font(.title2)
                            .fontWeight(.bold)
                        
                        ZStack {
                            Color.newBeige
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                            VStack(alignment: .leading, spacing: 5) {
                                ForEach(event.bestCocktail.ingredients ?? [], id: \.self) { ingredient in
                                    Text("\u{00B7} \(ingredient)")
                                        .font(.custom("SF Pro", size: 14))
                                }
                            }
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background {
                            RoundedRectangle(cornerRadius: 6)
                                .fill(Color.newBeige)
                                .frame(width: 360)

                        }
                        Spacer()
                        HStack {
                            ConfirmationButtonView(title: "JE PARTICIPE", action: {})
                        }
                        .frame(maxWidth: .infinity, alignment: .center)
                       
                    }
                    .padding(.horizontal)
                    
                }
                
            }
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("Détails de l'évènmemnt")
                    
                }
            }
            
        }
    }
}

#Preview {
    EventDetailsView(event: .constant(.defaultEvent))
}
