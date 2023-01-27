//
//  trial.swift
//  bpart
//
//  Created by 박정은 on 2023/01/27.
//

import SwiftUI
import MapKit

struct IdentifiablePlace: Identifiable {
    let id: UUID
    let location: CLLocationCoordinate2D
    init(id: UUID = UUID(), lat: Double, long: Double) {
        self.id = id
        self.location = CLLocationCoordinate2D(
            latitude: lat,
            longitude: long)
    }
}

struct trial_Previews: View {
    let place: IdentifiablePlace
    @State var region: MKCoordinateRegion

    var body: some View {
        Map(coordinateRegion: $region,
            annotationItems: [place])
        { place in
            MapMarker(coordinate: place.location,
                   tint: Color.purple)
        }
    }
}
//
struct trial: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}
//
//struct trial_Previews: PreviewProvider {
//    static var previews: some View {
//        trial()
//    }
//}
