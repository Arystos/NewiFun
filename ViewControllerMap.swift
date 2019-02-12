//
//  ViewControllerMap.swift
//  NewiFun
//
//  Created by Aristide Sessa on 12/02/19.
//  Copyright © 2019 Safety. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewControllerMap: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {

    @IBOutlet weak var mapView: MKMapView!
    
    var managerPosizione: CLLocationManager!
    var posizioneUtente: CLLocationCoordinate2D!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.mapView.delegate = self
        self.managerPosizione = CLLocationManager()
        
        managerPosizione.delegate = self
        managerPosizione.desiredAccuracy = kCLLocationAccuracyNearestTenMeters
        managerPosizione.requestWhenInUseAuthorization()
        managerPosizione.startUpdatingLocation()
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
