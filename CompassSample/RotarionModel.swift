//
//  ViewController.swift
//  CompassSample
//
//  Created by cmStudent on 2022/04/20.
//

import Foundation
import CoreLocation
import UIKit

class RotationModel:UIViewController,CLLocationManagerDelegate{
    var locationManager : CLLocationManager!
//    @Binding var needleView : UIView!
    let manager = CLLocationManager()
    
    override func viewDidLoad(){
//        super.viewDidLoad()
//
//        locationManager = CLLocationManager()
//        locationManager.delegate = self
//        locationManager.startUpdatingHeading()
        
        manager.delegate = self
        manager.requestWhenInUseAuthorization()
        
        manager.headingFilter      = kCLHeadingFilterNone
        manager.headingOrientation = .portrait
        manager.startUpdatingHeading()
    }
    
    
//    override func didReceiveMemoryWarning(){
//        super.didReceiveMemoryWarning()
//    }
}
