//
//  ContentView.swift
//  LabeledContentDemo
//
//  Created by Sowmya Bharath on 05/01/26.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("app_theme") private var selectedTheme: AppTheme = .system
    let user = AppData.user
    let otherInfo = AppData.otherInfo
    var body: some View {
        VStack {
            Form {
                ProfileAvatarView(profile: user)

                LabeledContent {
                    HStack {
                        Text("Verified")
                            .foregroundColor(.green)
                        Image(systemName: "checkmark.seal.fill")
                            .foregroundColor(.green)
                    }
                } label: {
                    Text("Status")
                }

                ProfileSectionView(profile: user)
                OtherInfoSectionView(items: otherInfo)
                PreferencesSectionView(profile: user)
            }
            .scrollContentBackground(.hidden)
            .listSectionSpacing(10)
        }
        .preferredColorScheme(selectedTheme.colorScheme)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    ContentView()
}
