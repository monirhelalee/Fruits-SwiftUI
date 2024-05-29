//
//  SettingsView.swift
//  Fruits-SwiftUI
//
//  Created by Monir Haider Helalee on 28/5/24.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - Properties

    @Environment(\.presentationMode) var presentaionMode

    // MARK: - Body

    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    // MARK: - Section 1

                    GroupBox(
                        label:
                        SettingsLabelView(labelText: "Fruits", labelImage: "info.circle")
                    ) {
                        Divider().padding(.vertical, 4)
                        HStack(alignment: /*@START_MENU_TOKEN@*/ .center/*@END_MENU_TOKEN@*/, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)

                            Text("Most fruits are naturally low in fat, sodium and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins and much more.")
                                .font(.footnote)
                        }
                    }

                    // MARK: - Section 2

                    // MARK: - Section 3

                    GroupBox(label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")) {
                        SettingsRowView(name: "Developer",content: "Monir Haider")
                        SettingsRowView(name: "Compatibility",content: "iOS")
                        SettingsRowView(name: "Website",linkLabel: "Developer portfolio" , linkDestination: "monirdev.com")
                        SettingsRowView(name: "X",linkLabel: "@monirhelalee" , linkDestination: "x.com/monirhelalee")
                        SettingsRowView(name: "Github",linkLabel: "monirhelalee" , linkDestination: "github.com.com/monirhelalee")
                        SettingsRowView(name: "Version",content: "1.1.0")
                    }
                } //: VStack
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(trailing: Button(action: {
                    presentaionMode.wrappedValue.dismiss()
                }) {
                    Image(systemName: "xmark")
                })
                .padding()
            } //: Scroll
        } //: Namvigationn
    }
}

// MARK: - Preview

#Preview {
    SettingsView()
        .preferredColorScheme(.dark)
}
