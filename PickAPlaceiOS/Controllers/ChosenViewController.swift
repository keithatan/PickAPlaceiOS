//
//  ChosenViewController.swift
//  PickAPlaceiOS
//
//  Created by Keith Tan on 4/8/19.
//  Copyright © 2019 keithatan. All rights reserved.
//

import UIKit
import MapKit


class ChosenViewController: UIViewController {
    
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var nameLabel: UILabel!
    var business = Business(name: "", rating: 0.0, image_url: "", phone: "", price: "", url: "", location: Location(city: "", country: "", address1: "", address2: "", address3: "", state: "", zip_code: ""), coordinates: BusinessCoordinate(longitude: 0.0, latitude: 0.0), distance: 0.0)
    let regionRadius: CLLocationDistance = 1000
    

    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = business.name
        let initialLocation = CLLocation(latitude: business.coordinates.latitude, longitude: business.coordinates.longitude)
        centerMapOnLocation(location: initialLocation)
    }
    
    func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegion(center: location.coordinate,
                                                  latitudinalMeters: regionRadius, longitudinalMeters: regionRadius)
        mapView.setRegion(coordinateRegion, animated: true)
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
