//
//  SettingsRowView.swift
//  Fruits-SwiftUI
//
//  Created by Monir Haider Helalee on 28/5/24.
//

import SwiftUI

struct SettingsRowView: View {
    // MARK: - Properties
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil

    // MARK: - Body

    var body: some View {
        HStack{
            Text(name).foregroundColor(.gray)
            Spacer()
            if (content != nil) {
                Text(content!)
            } else if(linkLabel != nil && linkDestination != nil){
                Link(linkLabel!,destination: URL(string: "https://\(linkDestination!)")!)
                Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
            } else {
                /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
            }
        }
    }
}

// MARK: - Preview

#Preview {
    SettingsRowView(name: "Developer", content: "Monir Haider")
        .previewLayout(.fixed(width: 375, height: 60))
        .padding()
}
