//
//  ProfileSectionView.swift
//  LabeledContentDemo
//
//  Created by Sowmya Bharath on 05/01/26.
//

import SwiftUI

struct ProfileSectionView: View {
    let profile: UserProfile
    var body: some View {
        Section {
            
            LabeledContent("About", value: profile.about)

            LabeledContent {
                Text(profile.email)
                    .foregroundColor(.blue)
            } label: {
                Label("Email", systemImage: "envelope.fill")
            }

            LabeledContent {
                Text(profile.phone)
            } label: {
                Label("Phone", systemImage: "phone.fill")
            }
        }
    }
}
