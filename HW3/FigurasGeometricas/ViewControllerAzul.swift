//
//  ViewControllerAzul.swift
//  FigurasGeometricas
//
//  Created by Alumno on 03/03/20.
//  Copyright © 2020 Alumno. All rights reserved.
//

import UIKit

class ViewControllerAzul: UIViewController {
    
    @IBOutlet weak var imgEsfera: UIImageView!
    @IBOutlet weak var tfRadio: UITextField!
    
    var varImageEsfera: UIImage!
    var radius: String!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tfRadio.text = radius
    }
    

    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vistaInicial = segue.destination as! ViewController
        vistaInicial.varFirstLabel = "Radio = \(tfRadio.text!)"
        
        let rad = Double(tfRadio.text!)!
        let volumen = (4/3)*3.14*( pow(Double(rad), Double(3)) )
        vistaInicial.varsecondLabel = "\(volumen)"
        
        vistaInicial.varImage = imgEsfera.image!
    }
    
    
    func createAlert () {
        let alerta = UIAlertController(title: "Error", message: "Los campos deben tener dato", preferredStyle: .alert)
        let accion = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alerta.addAction(accion)
        present(alerta, animated: true, completion: nil)
    }
    

}
