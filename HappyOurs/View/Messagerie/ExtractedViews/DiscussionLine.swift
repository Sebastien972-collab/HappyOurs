//
//  DiscussionLine.swift
//  HappyOurs
//
//  Created by caroletm on 04/06/2025.
//

import SwiftUI
import Foundation

struct DiscussionLine: View {
    var body: some View {
        VStack {
            Divider()
            HStack {
                Image("carolineImage")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 60, height: 60)
                    .clipShape(Circle())
                VStack (alignment:.leading){
                    Text("Caroline Payet")
                        .fontWeight(.semibold)
                        .font(.subheadline)
                    Spacer()
                    Text("Hello ça va ?")
                        .font(.subheadline)
                }
                Spacer()
                VStack {
                    Text("Date")
                        .font(.caption)
                    Spacer()
                    Image(systemName: "chevron.right")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 15, height: 15)
                }
            }
            .frame(width : .infinity, height: 50)
            .padding(10)
            Divider()
        }
    }
}
#Preview {
    DiscussionLine()
}
