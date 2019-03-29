//
//  FoodViewController.swift
//  PickAPlaceiOS
//
//  Created by Adam Ding on 3/27/19.
//  Copyright © 2019 keithatan. All rights reserved.
//

import UIKit

class FoodViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        restaurantNameLabel.text = "testing"
        priceLabel.text = "$$"
        var dog = UIImage(named: "IMG_0074")
        restaurantImageView.image = dog
    
    }
    
    @IBOutlet weak var restaurantImageView: UIImageView!    //image for restaurant
    @IBOutlet weak var restaurantNameLabel: UILabel!        //label for restaurant name
    @IBOutlet weak var priceLabel: UILabel! //label for price
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
