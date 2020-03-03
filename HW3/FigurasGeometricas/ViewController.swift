//
//  ViewController.swift
//  FigurasGeometricas
//
//  Created by Alumno on 27/02/20.
//  Copyright © 2020 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imgMainImage: UIImageView!
    @IBOutlet weak var lbUp: UILabel!
    @IBOutlet weak var lbDown: UILabel!
    
    var varImage : UIImage!
    var varFirstLabel : String!
    var varsecondLabel : String!
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func unwindEsfera(unwindSegue : UIStoryboardSegue){
        imgMainImage.image = varImage
        lbUp.text = varFirstLabel
        lbDown.text = varsecondLabel
    }
    
    @IBAction func unwindPrisma(unwindSegue : UIStoryboardSegue){
        imgMainImage.image = varImage
        lbUp.text = varFirstLabel
        lbDown.text = varsecondLabel
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "esfera" {
//            let vistaEsfera = segue.destination as! ViewControllerAzul
//            
//        } else {
//            let vistaPrisma = segue.destination as! ViewControllerVerde
//        }
           
    }

    @IBAction func reset(_ sender: UIButton) {
        lbUp.text = ""
        lbDown.text = ""
        imgMainImage.image = nil
    }
    
    
}

