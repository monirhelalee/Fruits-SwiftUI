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
        Button(action: {
            print("Exit the onboarding")
        }) {
            HStack(spacing: 8) {
                Text("Start")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            } //: HSatck
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(Capsule().strokeBorder(.white,lineWidth: 1.25))
        } //: Button
        .accentColor(.white)
    }
}

// MARK: Preview

#Preview {
    StartButtonView()
        .preferredColorScheme(/*@START_MENU_TOKEN@*/ .dark/*@END_MENU_TOKEN@*/)
        .previewLayout(.sizeThatFits)
}
