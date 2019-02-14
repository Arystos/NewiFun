//
//  PlaceCellTableViewCell.swift
//  NewiFun
//
//  Created by Aristide Sessa on 14/02/19.
//  Copyright © 2019 Safety. All rights reserved.
//

import UIKit

class PlaceCellTableViewCell: UITableViewCell {
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var city: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
