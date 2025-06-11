//
//  PickerView.swift
//  HappyOurs
//
//  Created by caroletm on 03/06/2025.
//
import SwiftUI

struct Picker_Discussion_View: View {
    
    @Binding var selectedTab: String
    var tabs : [String]
    
    var body: some View {
        
        Picker(selection: $selectedTab, label: Text("")) {
            ForEach(tabs, id: \.self) { tab in
                Text(tab).tag(tab)
            }
        }
        .pickerStyle(SegmentedPickerStyle())
        .padding(EdgeInsets(top: 10, leading: 24, bottom: 3, trailing: 24))
    }
}

#Preview {
    Picker_Discussion_View(selectedTab: .constant("Toutes"), tabs: ["Toutes","Groupes", "Privés"])
}
