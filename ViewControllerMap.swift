//
//  ViewControllerMap.swift
//  NewiFun
//
//  Created by Aristide Sessa on 12/02/19.
//  Copyright © 2019 Safety. All rights reserved.
//

import UIKit
import MapKit // Serve per importare i comandi della mappa
import CoreLocation // Imposta i comandi della Localizzazione

class ViewControllerMap: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {

    @IBOutlet var dovevuoiandare: UILabel!
    @IBOutlet var searchBar: UISearchBar!
    @IBOutlet var bottone2: UIButton!
    @IBOutlet var bottone1: UIButton!
    
  
    @IBOutlet weak var mapView: MKMapView! // Reference alla mapView
    
    var primaPosizione = false
    
    var locationManager: CLLocationManager! // variabile che gestisce la posizione
    var userPosition: CLLocationCoordinate2D? // variabile che imposta la posizione utente
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        self.mapView.delegate = self // Delegato alla gestione del ViewControllerMap
        self.locationManager = CLLocationManager() // inizializzazione della CLLocation in locationManager
        
        locationManager.delegate = self // locationManager delega CLLocationManager
        locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters //Precisione della posizione
        locationManager.requestWhenInUseAuthorization() //Se non è attiva la posizione è richiesta la geolocalizzazione
        locationManager.startUpdatingLocation() //Recupera e aggiorna gli spostamenti utente
    }
    
    
    // Funzione che imposta la visualizzazione a seguire il punto
    func mapView(_ mapView: MKMapView, didUpdate userLocation: MKUserLocation) {
        self.userPosition = userLocation.coordinate
        
        print("update position - lat: \(userLocation.coordinate.latitude) long: \(userLocation.coordinate.longitude)") // Print a console delle coordinate aggiornate

        if !primaPosizione {
            let span = MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
            let region = MKCoordinateRegion(center: userLocation.coordinate, span: span) // Regione visualizzata ogniqualvolta si aggiorna
            mapView.setRegion(region, animated: true) // Animazione della region quando zoomma
            primaPosizione = true
        }
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
