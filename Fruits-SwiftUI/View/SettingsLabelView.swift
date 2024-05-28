//
//  SettingsLabelView.swift
//  Fruits-SwiftUI
//
//  Created by Monir Haider Helalee on 28/5/24.
//

import SwiftUI

struct SettingsLabelView: View {
    // MARK: - Properties
    
    var labelText: String
    var labelImage: String

    // MARK: - Body

    var body: some View {
        HStack {
            Text(labelText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        } //: HStack
    }
}

// MARK: - Preview

#Preview {
    SettingsLabelView(labelText: "Fruits", labelImage: "info.circle")
        .previewLayout(.sizeThatFits)
        .padding()
}
