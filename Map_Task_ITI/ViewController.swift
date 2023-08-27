//
//  ViewController.swift
//  Map_Task_ITI
//
//  Created by Abdelrahman Esmail on 24/08/2023.
//

import UIKit


class ViewController: UIViewController {
    @IBOutlet weak var nameTxt: UITextField!
    @IBOutlet weak var latTxt: UITextField!
    @IBOutlet weak var lonTxt: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func showBtn(_ sender: Any) {
        let latitudeText = latTxt.text!
        let longitudeText = lonTxt.text!
        let locationName = nameTxt.text!
        let latitude = Double(latitudeText)
        let longitude = Double(longitudeText)
        
        let LocationView = (storyboard?.instantiateViewController(withIdentifier: "LocationView"))! as! LocationViewController
        LocationView.locationName = locationName
        LocationView.longitude = longitude!
        LocationView.latitude = latitude!
        navigationController?.pushViewController(LocationView, animated: true)
    }
    

}

