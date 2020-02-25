//
//  ViewController.swift
//  HW1
//
//  Created by Alumno on 17/02/20.
//  Copyright © 2020 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var tfParciales: UITextField!
    @IBOutlet weak var tfAct: UITextField!
    @IBOutlet weak var tfExamenFinal: UITextField!
    @IBOutlet weak var tfNotaFinal: UITextField!
    
    @IBOutlet weak var lbExamenFinal: UILabel!
    @IBOutlet weak var lbNotaFinal: UILabel!
    
    @IBOutlet weak var btnCalcular: UIButton!
    
    var isNotaFinal: Bool = true
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func calcular(_ sender: UIButton) {
        if(isNotaFinal){
            calcularNotaFinal()
        } else {
            calcularNotaPasar()
        }
    }
    
    @IBAction func changeCalculation(_ sender: UISwitch) {
        cleanText()
        if (sender.isOn){
            isNotaFinal = true
            tfExamenFinal.isHidden = false
            lbExamenFinal.isHidden = false
            lbNotaFinal.text = "Nota final"
            btnCalcular.setTitle("Calcular Nota Final", for: .normal)
        } else {
            
            isNotaFinal = false
            tfExamenFinal.isHidden = true
            lbExamenFinal.isHidden = true
            lbNotaFinal.text = "Nota para pasar"
            btnCalcular.setTitle("Calcular Nota Pasar", for: .normal)
        }
    }
    
    func calcularNotaFinal () {
        if let caliParc = Double(tfParciales.text!),
            let caliAct = Double(tfAct.text!),
            let caliExamFinal = Double(tfExamenFinal.text!) {
            
            let notaFinal = caliParc * 0.5 + caliAct * 0.2 + caliExamFinal * 0.30
            
            tfNotaFinal.text = "\(notaFinal)"
        } else {
            createAlert()
        }
    }
    
    
    func calcularNotaPasar () {
        if let caliParc = Double(tfParciales.text!),
            let caliAct = Double(tfAct.text!) {
            
            let notaPasar = ( 70 - ( caliParc * 0.5 + caliAct * 0.20) ) / 0.30
            
            tfNotaFinal.text = "\(notaPasar)"
        } else {
            createAlert()
        }
    }
    
    func createAlert () {
        let alerta = UIAlertController(title: "Error", message: "Los campos deben tener dato", preferredStyle: .alert)
        let accion = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alerta.addAction(accion)
        present(alerta, animated: true, completion: nil)
    }
    
    
    func cleanText () {
        tfParciales.text = ""
        tfAct.text = ""
        tfExamenFinal.text = ""
        tfNotaFinal.text = ""
    }
    
    @IBAction func quitarTeclado(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }


}

