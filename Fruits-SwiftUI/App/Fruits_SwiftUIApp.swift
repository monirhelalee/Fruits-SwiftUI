//
//  Fruits_SwiftUIApp.swift
//  Fruits-SwiftUI
//
//  Created by Monir Haider Helalee on 23/5/24.
//

import SwiftUI

@main
struct Fruits_SwiftUIApp: App {
    @AppStorage("isOnboarding") var isOnbording: Bool = true

    var body: some Scene {
        WindowGroup {
            if isOnbording {
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}
