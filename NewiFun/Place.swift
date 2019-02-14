//
//  File.swift
//  NewiFun
//
//  Created by Aristide Sessa on 14/02/19.
//  Copyright © 2019 Safety. All rights reserved.
//

import UIKit


class Place {
    
    init(name: String, city: String, latitude: Double, longitude: Double, tips: String = "", warning: Set <String> = ["nowarning.png"], services: Set <String> = ["noservices.png"]) {
        self.name = name
        self.city = city
        self.coordinates = (latitude, longitude)
        self.tips = tips
        self.warning = warning
        self.services = services
    }
    
    let name: String
    let city: String
    let coordinates: (latitude: Double, longitude: Double)
    var tips: String
    var warning: Set <String>
    var services: Set <String>
    
}
