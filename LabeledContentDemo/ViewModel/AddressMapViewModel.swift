//
//  AddressMapViewModel.swift
//  LabeledContentDemo
//
//  Created by Sowmya Bharath on 05/01/26.
//

import Foundation
import SwiftUI
import Combine
import MapKit

@MainActor
final class AddressMapViewModel: ObservableObject {

    @Published var position: MapCameraPosition = .automatic

    func loadAddress(_ address: String) async {
        do {
            let request = MKLocalSearch.Request()
            request.naturalLanguageQuery = address

            let search = MKLocalSearch(request: request)
            let response = try await search.start()

            guard let item = response.mapItems.first else { return }

            let coordinate = item.location.coordinate

            position = .region(
                MKCoordinateRegion(
                    center: coordinate,
                    span: MKCoordinateSpan(
                        latitudeDelta: 0.01,
                        longitudeDelta: 0.01
                    )
                )
            )
        } catch {
            print("Map search failed:", error)
        }
    }
}
