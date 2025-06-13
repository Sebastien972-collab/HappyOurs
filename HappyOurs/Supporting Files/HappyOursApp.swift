//
//  HappyOursApp.swift
//  HappyOurs
//
//  Created by Sébastien DAGUIN  on 28/05/2025.
//

import SwiftUI

@main
struct HappyOursApp: App {
    @StateObject var messagerieModel: MessagerieViewModel = MessagerieViewModel(userManager: .init())
    @StateObject private var userManager: UserManager = .init()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(messagerieModel)
                .environmentObject(userManager)
                .onAppear() {
                    messagerieModel.userManager = userManager
                }
        }
    }
}
