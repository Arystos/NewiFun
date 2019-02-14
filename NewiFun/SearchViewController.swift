//
//  SeatchViewController.swift
//  NewiFun
//
//  Created by Aristide Sessa on 14/02/19.
//  Copyright © 2019 Safety. All rights reserved.
//

import UIKit


// Struct degli elementi del posto
//struct Place {
//    let name: String
//    let city: String
//    let coordinates: (latitude: Double, longitude: Double)
//    var tips: String
//    var warning: Set <String>
//    var services: Set <String>
//    
//
//    init(name: String, city: String, latitude: Double, longitude: Double, tips: String = "", warning: Set <String> = ["nowarning.png"], services: Set <String> = ["noservices.png"]) {
//        self.name = name
//        self.city = city
//        self.coordinates = (latitude, longitude)
//        self.tips = tips
//        self.warning = warning
//        self.services = services
//    }
//    
//    
//}

class SeatchViewController: UIViewController {
    
    // Import della searchBar
    @IBOutlet weak var searchBar: UISearchBar!
    
    let places = [
        // Place 0
        (Place(name: "Piazza San Padre Pio", city: "Gravinia in Puglia, BA", latitude: 40.8249823, longitude: 16.4164415)),
        // Place 1
        (Place(name: "Parco SA Pozzi", city: "Aversa, CE", latitude: 40.976571, longitude: 14.208952))
    ]
    
    var placesFiltered = [(String, String)]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.leftBarButtonItem = self.editButtonItem
        // Non so cosa faccia, uncomment se sai a cosa serva
        // searchBar.delegate = self
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return placesFiltered.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PlaceCellTableViewCell", for: indexPath) as! PlaceCellTableViewCell
        
        let place = placesFiltered[indexPath.row]
        
        cell.name.text = place.0
        cell.name.text = place.1
        
        return cell
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
