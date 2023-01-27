//
//  LocationManager.swift
//  bpart
//
//  Created by 박정은 on 2023/01/27.
//

import Foundation
import MapKit

class LocationManager: NSObject, ObservableObject {
    
    private let locationManager = CLLocationManager()
    @Published var location: CLLocation? = nil
    
    override init(){
        super.init()
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest // for location accuracy
        locationManager.distanceFilter = kCLDistanceFilterNone
        locationManager.requestWhenInUseAuthorization() // ask permission
        locationManager.startUpdatingLocation() // update up-to-date location
    }
}

extension LocationManager: CLLocationManagerDelegate {
    
    // Will be call whenever the user's location is updated
    func locationManager(_ manager: CLLocationManager, didUpdateHeading locations: [CLLocation]) {
        guard let location = locations.last else {
            return
        }
        
        DispatchQueue.main.async {
            self.location = location
        }
    }
}
