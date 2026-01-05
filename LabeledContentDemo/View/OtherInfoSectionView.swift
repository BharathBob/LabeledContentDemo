//
//  OtherInfoSectionView.swift
//  LabeledContentDemo
//
//  Created by Sowmya Bharath on 05/01/26.
//

import SwiftUI

struct OtherInfoSectionView: View {
    let items: [OtherInfoItem]

    var body: some View {
        Section {
            ForEach(items) { item in
                switch item {

                case .address(let value):
                    VStack(alignment: .leading, spacing: 8) {
                        LabeledContent("Address") {
                            Text(value)
                                .multilineTextAlignment(.trailing)
                        }
                    }
                case .map(let value):
                    AddressMapView(address: value)
                        .frame(height: 180)
                case .website(let url):
                    LabeledContent("Website") {
                        Link(url.absoluteString, destination: url)
                    }

                case .linkedin(let url):
                    LabeledContent("LinkedIn") {
                        Link(url.absoluteString, destination: url)
                    }
                }
            }
        }
    }
}
