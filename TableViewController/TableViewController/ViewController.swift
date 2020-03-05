//
//  ViewController.swift
//  TableViewController
//
//  Created by Alumno on 05/03/20.
//  Copyright © 2020 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lbName: UILabel!
    @IBOutlet weak var lbPoints: UILabel!
    @IBOutlet weak var lbEmail: UILabel!
    
    @IBOutlet weak var imgPlayer: UIImageView!
    
    var thePlayer: Jugador!

    override func viewDidLoad() {
        super.viewDidLoad()
        lbName.text = thePlayer.nombre
        lbPoints.text = "\(thePlayer.puntos)"
        lbEmail.text = thePlayer.email
        imgPlayer.image = UIImage(named: thePlayer.pictureName)
        title = "Player"
    }


}

