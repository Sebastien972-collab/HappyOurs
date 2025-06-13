//
//  ImagesEvent.swift
//  HappyOurs
//
//  Created by Dembo on 05/06/2025.
//

import SwiftUI

struct ImagesEvent: View {
    
    var imageName: String
    
       var body: some View {
           Image(imageName)
               .resizable()
               .aspectRatio(contentMode: .fill)
               .frame(width: 70, height: 70)
               .clipShape(RoundedRectangle(cornerRadius: 10))
    
       }

}

#Preview {
    ImagesEvent(imageName: "event-1")
}
