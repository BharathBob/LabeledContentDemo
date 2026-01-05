//
//  AppHelper.swift
//  LabeledContentDemo
//
//  Created by Sowmya Bharath on 05/01/26.
//
import Foundation

enum AppData {
    
    static let user = UserProfile(
        name: "Viswa Bharath",
        role: " iOS Developer",
        dob: "1 February, 1990",
        email: "bharath.viswa127@gmail.com",
        phone: "+91 9676106482",
        address: "Indiranagar, Bangalore, India",
        website: URL(string: "https://linkedin.com/in/viswabharathdakka")!,
        linkedin: URL(string: "https://viswabharathdakka.lovable.app")!,
        about: "Mobile Engineer focused on Swift, SwiftUI & system-driven iOS design.",
        languages: "English, Hindi, Kannada, Telugu, Tamil"
    )

    static let otherInfo: [OtherInfoItem] = [
        .address(user.address),
        .map(user.address),
        .website(user.website),
        .linkedin(user.linkedin)
    ]
}

enum OtherInfoItem: Identifiable {
    case address(String)
    case map(String)
    case website(URL)
    case linkedin(URL)

    var id: String {
        switch self {
        case .address: return "address"
        case .map: return "map"
        case .website: return "website"
        case .linkedin: return "linkedin"

        }
    }

    var title: String {
        switch self {
        case .address: return "Address"
        case .map: return "Location"
        case .website: return "Website"
        case .linkedin: return "LinkedIn"
        }
    }
}
