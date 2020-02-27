//
//  ViewController.swift
//  ActClaseStoryboardsE20
//
//  Created by Yolanda Martinez on 25/02/20.
//  Copyright © 2020 com.itesm. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lbNameClient: UILabel!
    @IBOutlet weak var tfCellphone: UITextField!
    @IBOutlet weak var imgProfile: UIImageView!
    
    var clientName: String! = "-"
    var cellPhone: String!
    var profilePic: UIImage!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func unwindAzul (unwindSegue: UIStoryboardSegue) {
        lbNameClient.text = clientName
        tfCellphone.text = cellPhone
        imgProfile.image = profilePic
    }
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "azul" {
            let vistaAzul = segue.destination as! ViewControllerName
            if lbNameClient.text! == "-" {
                vistaAzul.name = ""
            } else {
                vistaAzul.name = lbNameClient.text
            }
            
        } else {
            let vistaVerde = segue.destination as! ViewControllerCellPhone
            vistaVerde.cell = tfCellphone.text
        }
    }

}

