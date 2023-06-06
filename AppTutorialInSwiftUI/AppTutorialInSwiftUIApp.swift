//
//  AppTutorialInSwiftUIApp.swift
//  AppTutorialInSwiftUI
//
//  Created by Alexandr Bahno on 01.06.2023.
//

import SwiftUI

@main
struct AppTutorialInSwiftUIApp: App {
    
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
