//
//  SourceLinkView.swift
//  Fruits-SwiftUI
//
//  Created by Monir Haider Helalee on 27/5/24.
//

import SwiftUI

struct SourceLinkView: View {
    // MARK: - Properties

    // MARK: - Body

    var body: some View {
        GroupBox(){
            HStack{
                Text("Content source")
                Spacer()
                Link("Wikipida", destination: URL(string: "https://wikipedia.com")!)
                Image(systemName: "arrow.up.right.square")
                    
            }
            .font(.footnote)
        } //: GroupBox
    }
}

// MARK: - Preview
#Preview {
    SourceLinkView()
        .previewLayout(.sizeThatFits)
        .padding()
}
