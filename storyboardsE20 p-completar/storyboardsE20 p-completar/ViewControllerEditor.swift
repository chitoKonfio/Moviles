//
//  ViewControllerEditor.swift
//  storyboardsE20 p-completar
//
//  Created by Alumno on 24/02/20.
//  Copyright © 2020 com.itesm. All rights reserved.
//

import UIKit

class ViewControllerEditor: UIViewController {
    
    @IBOutlet weak var tfName: UITextField!
    @IBOutlet weak var tfEmail: UITextField!
    
    var name: String!
    var email: String!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tfName.text = name
        tfEmail.text = email
    }
    
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let mainView = segue.destination as! ViewController
        mainView.name = tfName.text!
        mainView.email = tfEmail.text!
    }
    
    

}
