//
//  AddressMapView.swift
//  LabeledContentDemo
//
//  Created by Sowmya Bharath on 05/01/26.
//

import SwiftUI
import MapKit

struct AddressMapView: View {
    @StateObject private var viewModel = AddressMapViewModel()
    let address: String

    var body: some View {
        Map(position: $viewModel.position)
            .frame(height: 200)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .task {
                await viewModel.loadAddress(address)
            }
    }
}
