//
//  FruitNutrientsView.swift
//  Fruits-SwiftUI
//
//  Created by Monir Haider Helalee on 27/5/24.
//

import SwiftUI

struct FruitNutrientsView: View {
    // MARK: - Properties

    var fruit: Fruit
    let nutrients: [String] = ["Energy", "Suger", "Fat", "Protine", "Vitamins", "Minerals"]

    // MARK: - Body

    var body: some View {
        GroupBox {
            DisclosureGroup("Nutritional value per 100g") {
                ForEach(0 ..< nutrients.count, id: \.self) { item in

                    Divider().padding(.vertical, 2)
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                        Spacer()
                        Text(fruit.nutrition[item])
                    } //: HStack
                }
            } //: discloser group
        } //: GroupBox
    }
}

// MARK: - Preview

#Preview {
    FruitNutrientsView(fruit: fruitsData[0])
        .preferredColorScheme(/*@START_MENU_TOKEN@*/ .dark/*@END_MENU_TOKEN@*/)
        .previewLayout(.fixed(width: 375, height: 480))
        .padding()
}
