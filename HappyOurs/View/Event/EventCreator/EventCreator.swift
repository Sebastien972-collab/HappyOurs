//
//  EventCreator.swift
//  HappyOurs
//
//  Created by Sébastien DAGUIN  on 02/06/2025.
//

import SwiftUI
import FestivityUIKit
struct EventCreator: View {
    @Binding var eventCreator: EventCreatorManager
    var body: some View {
        ScrollView {
            VStack(alignment: .center, spacing: 10) {
                AddImageEventButtonView() {}
                    .frame(height: 200)
                    .navigationTitle(Text("Créer un évènement"))
                    .navigationBarTitleDisplayMode(.inline)
                
                CustomTextFieldWithImageView(systemName: "tag", placeholder: "Nom de l'évènement", text: $eventCreator.nameOfEvent)
                    .padding(.horizontal)
                CustomTextFieldWithImageView(systemName: "mappin.and.ellipse", placeholder: "Addresse de l'évènement", text: $eventCreator.localisationOfEvent)
                    .padding(.horizontal)
                    .padding(.bottom)
                HStack(spacing: 10) {
                    DatePicker(selection: $eventCreator.dateOfEvent, displayedComponents: [.date, .hourAndMinute]) {
                        HStack {
                            Image(systemName: "calendar")
                                .font(.title2)
                                .foregroundStyle(Color.darkYellow200)
                        }
                    }
                    
                    CocktailImageView(cocktail: .preview)
                        .padding(.horizontal)
                        .padding(.bottom)
                    
                }
                .padding(.horizontal)
                CustomDivider()
                    
                BubblesView(currentType: $eventCreator.typrOfEvent)
                CustomDivider()
                VStack {
                    HStack {
                        Text("Nombre de verres à offrir ? ")
                            .bold()
                        Spacer()
                        TextField(" Nb 💃🏼", text: .constant(""))
                            .keyboardType(.numberPad)
                            .frame(width: 100, height: 50)
                            .background {
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color.newBeige)
                                    .overlay {
                                        RoundedRectangle(cornerRadius: 10)
                                            .stroke(Color.darkYellow200 ,lineWidth: 1)
                                    }
                                
                            }
                    }
                    
                }
                .padding(.horizontal)
                CustomDivider()
                VStack(alignment: .leading) {
                    Text("Description de l'évènement: ")
                        .bold()
                    CustomTextFieldWithBorder(text: $eventCreator.eventDescription, placeholder: "Ajouter une description...")
                }
                .padding()
                VStack(alignment: .leading) {
                    HStack {
                        Text("Coktail proposé :")
                            .bold()
                            .font(.title2)
                        Spacer()
                        CustomTextField(text: .constant(""), placeholder: "Nom du cocktail")
                    }
                    CustomTextField(text: .constant(""), placeholder: "Description du cocktail")
                    
                }
                .padding()
                ConfirmationButtonView(title: "Créer l'évènement") {
                    eventCreator.createNewEvent()
                    
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        EventCreator(eventCreator: .constant(EventCreatorManager()))
    }
}

struct CustomTextFieldWithBorder: View {
    @Binding var text: String
    let placeholder: String
    
    var body: some View {
        TextField(placeholder, text: $text, axis: .vertical)
            .font(.subheadline)
            .multilineTextAlignment(.leading)
            .frame(maxWidth: .infinity, minHeight: 200)
            .padding()
            .background {
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.newBeige)
                    .overlay(RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.darkYellow200, lineWidth: 2))
                
            }
    }
}
