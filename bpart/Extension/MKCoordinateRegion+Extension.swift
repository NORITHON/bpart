//
//  MKCoordinateRegion+Extension.swift
//  bpart
//
//  Created by 박정은 on 2023/01/27.
//

import Foundation
import MapKit
extension MKCoordinateRegion {
    static var defaultRegion: MKCoordinateRegion {
        return MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 0.783195, longitude: 15),span: MKCoordinateSpan(latitudeDelta: 50, longitudeDelta: 70))
        
    }
    
}

