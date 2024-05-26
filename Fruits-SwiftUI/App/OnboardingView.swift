//
//  OnboardingView.swift
//  Fruits-SwiftUI
//
//  Created by Monir Haider Helalee on 25/5/24.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - Properties
    var fruits: [Fruit] = fruitsData

    // MARK: - Body

    var body: some View {
        TabView{
            ForEach(fruits[0...5]){ item in
                FruitCardView(fruit: item)
            }//: Loop
        }//: Tabview
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

// MARK: - Preview

#Preview {
    OnboardingView(fruits: fruitsData)
}
