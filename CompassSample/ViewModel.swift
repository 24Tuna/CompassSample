//
//  ViewModel.swift
//  CompassSample
//
//  Created by cmStudent on 2022/04/21.
//

import Foundation
import SwiftUI
import MapKit

class ViewModel:NSObject,ObservableObject,CLLocationManagerDelegate {
    
    @Published var heading:CLLocationDirection = 0.0
    
    let model = RotationModel()
//    @Binding let needleView =
    override init(){
        model.viewDidLoad()
    }
    
//    func locationManager(_ manager: CLLocationManager,didUpdateHeading newHeading : CLHeading){
//        needleView.transform = CGAffineTransform.init(rotationAngle: CGFloat(-newHeading.magneticHeading) * CGFloat.pi / 180)
//    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateHeading newHeading: CLHeading) {
        self.heading = newHeading.magneticHeading
    }
}
