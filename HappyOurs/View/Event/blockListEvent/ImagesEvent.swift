//
//  ImagesEvent.swift
//  HappyOurs
//
//  Created by Dembo on 05/06/2025.
//

import SwiftUI

struct ImagesEvent: View {
    
    var imagaName: String
    
       var body: some View {
           Image(imagaName)
               .resizable()
               .renderingMode(.original)
               .frame(width: 70, height: 70)
               .clipShape(RoundedRectangle(cornerRadius: 10))
       }

}

#Preview {
    ImagesEvent(imagaName: "cocktail-1")
}
