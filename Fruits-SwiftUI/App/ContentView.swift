//
//  ContentView.swift
//  Fruits-SwiftUI
//
//  Created by Monir Haider Helalee on 23/5/24.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Properties
    @State private var isShowingSettings: Bool = false

    var fruits: [Fruit] = fruitsData

    // MARK: - Body

    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(destination: FruitDetailView(fruit: item)) {
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    } //: NavigationLink
                }
            } //: List
            .navigationTitle("Fruits List")
            .navigationBarItems(trailing: Button( action:{
                // action
                isShowingSettings.toggle()
            }){
                Image(systemName: "slider.horizontal.3")
            } //: Button
                .sheet(isPresented: $isShowingSettings){
                    SettingsView()
                }
            )
        } //: Navigationß
    }
}

#Preview {
    ContentView(fruits: fruitsData)
}
