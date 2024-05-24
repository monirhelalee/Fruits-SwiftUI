//
//  StartButtonView.swift
//  Fruits-SwiftUI
//
//  Created by Monir Haider Helalee on 24/5/24.
//

import SwiftUI

struct StartButtonView: View {
    // MARK: - Properties
    // MARK: - Body
    var body: some View {
        Button(action:{
            print("Exit the onboarding")
        }){
            Text("Start")
        }//: Button
    }
}
// MARK: Preview
#Preview {
    StartButtonView()
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
        .previewLayout(.sizeThatFits)
}
