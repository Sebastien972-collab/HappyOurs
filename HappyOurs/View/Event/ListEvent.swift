//
//  ListEvent.swift
//  HappyOurs
//
//  Created by Dembo on 30/05/2025.
//

import SwiftUI

struct ListEvent: View {
    @State private var manager = EventManager()
    @State private var isPresented: Bool = false
    var body: some View {
        NavigationStack {
            ZStack {
                ScrollView {
                    VStack(alignment: .leading) {
                        HStack{
                            CircleImage(image: Image("\(manager.currentUser.currentImageName ?? "carolineImage")"))
                            
                            Text("Bonjour \(manager.currentUser.username)")
                                .font(.title3)
                                .fontWeight(.bold)
                                .minimumScaleFactor(0.7)
                        }
                        if manager.currentUser is Participant {
                            Carouselle(events: $manager.trandingEvents )
                        } else {
                            NavigationLink {
                                EventCreator()
                            } label: {
                                AddImageEventButtonView(systemImage: "plus.circle") {
                                    isPresented = true
                                }
                                .frame(height: 150)
            
                                
                            }
                            
                            
                        }
                        ForEach(TypeOfEvent.allCases, id: \.self) { typeOfEvent in
                            EventNearYouView(type: typeOfEvent, events: Event.allEvents)
                        }
                        .padding(.horizontal)
                        Spacer()
                    }
                    .frame(maxWidth: .infinity)
                }
                VStack {
                    Spacer()
                    NavigationLink {
                        QRCodeView()
                    } label: {
                       BoutonFlottant()
                        }
                    Spacer()
                        .frame(height: 20)
                }
            }
        }
        .fullScreenCover(isPresented: $isPresented) {
            EventCreator()
        }
        
    }
    
    
    
    
}


#Preview {
    ListEvent()
}
