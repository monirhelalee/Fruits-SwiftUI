//
//  ContentView.swift
//  Fruits-SwiftUI
//
//  Created by Monir Haider Helalee on 23/5/24.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Properties
    
    var fruits: [Fruit] = fruitsData

    // MARK: - Body

    var body: some View {
        NavigationView{
            List{
                ForEach(fruits.shuffled()){ item in
                   FruitRowView(fruit: item)
                        .padding(.vertical, 4)
                }
            }//:List
            .navigationTitle("Fruits")
        } //: Navigationß
    }
}

#Preview {
    ContentView(fruits: fruitsData)
}
