//
//  ViewControllerVerde.swift
//  FigurasGeometricas
//
//  Created by Alumno on 03/03/20.
//  Copyright © 2020 Alumno. All rights reserved.
//

import UIKit

class ViewControllerVerde: UIViewController {
    
    @IBOutlet weak var imgPrisma: UIImageView!
    
    @IBOutlet weak var tfLargo: UITextField!
    @IBOutlet weak var tfAncho: UITextField!
    @IBOutlet weak var tfAltura: UITextField!
    
    var largo: String!
    var ancho: String!
    var altura: String!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        let largo = Double(tfLargo.text!)!
        let ancho = Double(tfAncho.text!)!
        let altura = Double(tfAltura.text!)!

        let vistaInicial = segue.destination as! ViewController
        vistaInicial.varFirstLabel = "Largo = \(largo) \nAncho = \(ancho)"

        let volumen = altura * ancho * largo
        vistaInicial.varsecondLabel = "Altura= \(altura) \nVolumen = \(volumen)"

        vistaInicial.varImage = imgPrisma.image!

        
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if let _ = Double(tfLargo.text!),
            let _ = Double(tfLargo.text!),
            let _ = Double(tfAltura.text!) {
            
            return true
            
        } else {
            createAlert()
            return false
        }
    }
        
        

    
    func createAlert () {
        let alerta = UIAlertController(title: "Error", message: "Los campos deben tener dato", preferredStyle: .alert)
        let accion = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alerta.addAction(accion)
        present(alerta, animated: true, completion: nil)
    }
    

}
