//
//  ProfileAvatarView.swift
//  LabeledContentDemo
//
//  Created by Sowmya Bharath on 05/01/26.
//

import SwiftUI

struct ProfileAvatarView: View {
    let profile: UserProfile
    var body: some View {
        VStack(spacing: 12) {

            Image("profile_avatar")
                .resizable()
                .scaledToFill()
                .frame(width: 120, height: 120)
                .clipShape(Circle())
                .overlay(
                    Circle()
                        .stroke(Color.gray.opacity(0.3), lineWidth: 1)
                )
                .shadow(radius: 4)

            Text(profile.name)
                .font(.headline)

            Text(profile.role)
                .font(.subheadline)
                .foregroundStyle(.secondary)
        }
    }
}
