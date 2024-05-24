//
//  FruitCardView.swift
//  Fruits-SwiftUI
//
//  Created by Monir Haider Helalee on 24/5/24.
//

import SwiftUI

struct FruitCardView: View {
    // MARK: - Properties
    @State private var isAnimating: Bool = false

    // MARK: - Body

    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                // FRUIT: Image
                Image("blueberry")
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)

                // FRUIT: Title
                Text("Blueberry")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
                // FRUIT: Headline
                Text("Blueberris are sweet, nutritionus and widly popular fruit all over the world.")
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                // BUTTON: Start
                StartButtonView()
            } //: VStack
        } //: ZStack
        .onAppear{
            withAnimation(.easeOut(duration: 0.5)){
                isAnimating = true
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: [Color("ColorBlueberryLight"), Color("ColorBlueberryDark")]), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20)
    }
}

// MARK: - Preview

#Preview {
    FruitCardView()
        .previewLayout(.fixed(width: 320, height: 640))
}
