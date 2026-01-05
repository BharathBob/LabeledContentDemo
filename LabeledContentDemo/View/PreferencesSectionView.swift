//
//  PreferencesSectionView.swift
//  LabeledContentDemo
//
//  Created by Sowmya Bharath on 05/01/26.
//
import SwiftUI

struct PreferencesSectionView: View {
    let profile: UserProfile
    @AppStorage("app_theme") private var selectedTheme: AppTheme = .system

    var body: some View {
        Section {
            Picker("Theme", selection: $selectedTheme) {
                ForEach(AppTheme.allCases) { theme in
                    Text(theme.title).tag(theme)
                }
            }
            LabeledContent("Languages", value: profile.languages)
            LabeledContent("Date of Birth") {
                Text(profile.dob)
            }
        }
    }
}
