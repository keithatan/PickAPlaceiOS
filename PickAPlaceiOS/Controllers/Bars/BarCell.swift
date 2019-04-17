//
//  BarCell.swift
//  PickAPlaceiOS
//
//  Created by Adam Ding on 4/15/19.
//  Copyright © 2019 keithatan. All rights reserved.
//

import UIKit

protocol BarCellDelegate: class {
    func didselectRestaurant(cell:BarCell)
}

class BarCell: UITableViewCell {
    
    weak var delegate: BarCellDelegate?
    
    var business = Business(name: "", rating: 0.0, image_url: "", phone: "", price: "", url: "", location: Location(city: "", country: "", address1: "", address2: "", address3: "", state: "",zip_code: ""))

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBOutlet weak var barNameLabel: UILabel!
    @IBOutlet weak var barImage: UIImageView!
}
