//
//  FundingMapView.swift
//  bpart
//
//  Created by Alex Cho on 2023/01/27.
//


import SwiftUI
import MapKit

struct Landmark: Identifiable {
    let id = UUID()
    let coordinate: CLLocationCoordinate2D
    let country: String
    let tag: String //물 교육 인권 일자리 보건 Water, Education, Human Rights, Workforce, Health
}

struct FundingMapView: View {
    
    let geo_dummy = [
        Landmark(coordinate: CLLocationCoordinate2D(latitude: 29.912289, longitude: 5.641287), country: "South Sudan", tag: "Education"),
        Landmark(coordinate: CLLocationCoordinate2D(latitude: 0.175897, longitude: 10.466159), country: "Gahna", tag: "Education"),
        Landmark(coordinate: CLLocationCoordinate2D(latitude: 7.171549, longitude: 23.314558), country: "Algeria", tag: "Water"),
        Landmark(coordinate: CLLocationCoordinate2D(latitude: 16.879637, longitude: -8.890065), country: "Tanzania", tag: "Human Rights"),
        Landmark(coordinate: CLLocationCoordinate2D(latitude: 20.957217, longitude: 12.525986), country: "Ethiopia", tag: "Health"),
        Landmark(coordinate: CLLocationCoordinate2D(latitude: 19.157224, longitude: 24.507183), country: "Botswana", tag: "Water")
    ]
    
    @StateObject private var placeListVM = PlaceListViewModel()
    @State private var userTrackingMode: MapUserTrackingMode = .follow
    @State private var searchTerm: String = ""
    @State private var selectedPlace: Landmark?
    
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
                print("Search complete")
            })
            .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Map(coordinateRegion: getRegion(), interactionModes: .all, showsUserLocation: true, userTrackingMode: $userTrackingMode, annotationItems: geo_dummy){ location in
                MapAnnotation(coordinate: location.coordinate) {
//                    Circle()
//                        .stroke(.red, lineWidth: 3)
//                        .frame(width: 44, height: 44)
//                        .onTapGesture {
//                            selectedPlace = location
//                        }
                    Image(systemName: "star.circle")
                        .resizable()
                        .foregroundColor(.red)
                        .frame(width: 30, height: 30)
                        .backgroundStyle(.white)
                        .clipShape(Circle())
                        .onTapGesture{
                            selectedPlace = location
                        }
                }
            }.padding()
        }.sheet(item: $selectedPlace) { place in
            Text(place.country)
                .presentationDetents([.medium])
        }
    }
        
    
}

struct FundingMapView_Previews: PreviewProvider {
    static var previews: some View {
        FundingMapView()
    }
}
