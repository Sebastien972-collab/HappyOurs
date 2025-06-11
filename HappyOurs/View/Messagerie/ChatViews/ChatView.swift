//
//  ChatView.swift
//  HappyOurs
//
//  Created by caroletm on 10/06/2025.
//

import SwiftUI

struct ChatView : View {
    
    @EnvironmentObject var messagerieViewModel: MessagerieViewModel
    @State var text = ""
    
    var body: some View {
        
        NavigationStack{
            VStack {
                ScrollView (showsIndicators: false) {
                    
                    VStack (spacing : 8){
                        
                        ForEach (messagerieViewModel.messagesVM) { message in
                            MessageBubble(message: message)
                        }
                    }
                }
                
                ZStack {
                    Rectangle()
                        .fill(Color.darkYellow200)
                        .ignoresSafeArea()
                        .frame(maxWidth : .infinity, maxHeight: 90)
                       
                    HStack {
                        TextField("Hello there", text: $text, axis: .vertical)
                            .padding()
                            .background(Color.white)
                            .cornerRadius(25)
                        Button {
                            messagerieViewModel.sendMessage(message: text)
                            text = ""
                        }label:{
                            Image(systemName: "paperplane")
                                .foregroundStyle(Color.white)
                                .padding(.horizontal, 5)
                        }
                    }.padding()
                }
            }
            .toolbar {
                ToolbarItem(placement: .principal) {
                    HStack {
                        Image("Brenda")
                            .resizable()
                            .scaledToFill()
                            .clipShape(Circle())
                            .frame(width: 40, height: 40)
                        Text("Andrew Parker")
                            .font(.title3)
                            .fontWeight(.bold)
                    }
                }
            }.navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ChatView()
        .environmentObject(MessagerieViewModel())
}
