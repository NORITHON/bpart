//
//  FundingMapView.swift
//  bpart
//
//  Created by Alex Cho on 2023/01/27.
//


import SwiftUI
import MapKit

struct FundingMapView: View {

    @StateObject private var placeListVM = PlaceListViewModel()
    @State private var userTrackingMode: MapUserTrackingMode = .follow
    @State private var searchTerm: String = ""

    private func getRegion() -> Binding<MKCoordinateRegion> {

        guard let coordinate = placeListVM.currentLocation else{
            return .constant(MKCoordinateRegion.defaultRegion)
        }
        return .constant(MKCoordinateRegion(center: coordinate, span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)))
    }

    var body: some View {
        VStack{
            TextField("Search", text: $searchTerm, onEditingChanged: { _ in

            }, onCommit: { // get all landmarks
                placeListVM.searchLandmarks(searchTerm: searchTerm)
                print(searchTerm)
            })
            .textFieldStyle(RoundedBorderTextFieldStyle())

            Map(coordinateRegion: getRegion(), interactionModes: .all, showsUserLocation: true, userTrackingMode: $userTrackingMode)
        }.padding()

    }
}

struct FundingMapView_Previews: PreviewProvider {
    static var previews: some View {
        FundingMapView()
    }
}
