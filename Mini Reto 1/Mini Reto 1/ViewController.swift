//
//  ViewController.swift
//  Mini Reto 1
//
//  Created by Alumno on 03/03/20.
//  Copyright © 2020 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var viewAnswer: UIView!
    
    @IBOutlet weak var btnLL: UIButton!
    @IBOutlet weak var btnCL: UIButton!
    @IBOutlet weak var btnCR: UIButton!
    @IBOutlet weak var btnRR: UIButton!
    
    
    override func viewDidLoad() {
        viewAnswer.isHidden = true
        super.viewDidLoad()
    }
    
    @IBAction func changeStyle(_ sender: UISegmentedControl) {
        let direction = sender.selectedSegmentIndex
        
        switch direction {
        case 0:
            viewAnswer.isHidden = true
            break
        case 1:
            viewAnswer.isHidden = false
            break
        default:
            print("Error")
        }
    }
    
    
    
    @IBAction func change(_ sender: UIButton) {
//        if sender == btnLL {
//            print("btnLL")
//        }
//
//        if sender == btnCL {
//            print("btnCL")
//        }
//
//        if sender == btnCR {
//            print("btnCR")
//        }
//
//        if sender == btnRR {
//            print("btnRR")
//        }
        print("hooa")
    }
    
    
    
    func createAlert () {
        let alerta = UIAlertController(title: "Cuidado", message: "No debe haber colores repetidos en el intento", preferredStyle: .alert)
        let accion = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alerta.addAction(accion)
        present(alerta, animated: true, completion: nil)
    }
    


}

