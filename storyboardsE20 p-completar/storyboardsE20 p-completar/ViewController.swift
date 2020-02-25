//
//  ViewController.swift
//  storyboardsE20 p-completar
//
//  Created by Yolanda Martinez on 24/02/20.
//  Copyright © 2020 com.itesm. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imgFoto: UIImageView!
    @IBOutlet weak var tfName: UITextField!
    @IBOutlet weak var tfEmail: UITextField!
    
    var name: String!
    var email: String!
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func unwindEditar (unwindSegue: UIStoryboardSegue) {
        tfName.text = name
        tfEmail.text = email
    }
    
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Info" {
            
            let vistaInfo = segue.destination as! ViewControllerInformacion
            vistaInfo.foto = imgFoto.image
            vistaInfo.altura = imgFoto.image?.size.height
            vistaInfo.ancho = imgFoto.image?.size.width
        } else {
            let vistaEditar = segue.destination as! ViewControllerEditor
            vistaEditar.name = tfName.text!
            vistaEditar.email = tfEmail.text!
        }
    }
    


}

