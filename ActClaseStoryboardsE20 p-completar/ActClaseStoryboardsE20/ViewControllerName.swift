//
//  ViewControllerName.swift
//  ActClaseStoryboardsE20
//
//  Created by Alumno on 27/02/20.
//  Copyright © 2020 com.itesm. All rights reserved.
//

import UIKit

class ViewControllerName: UIViewController {
    
    @IBOutlet weak var tfName: UITextField!
    
    var name: String!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tfName.text = name
    }
    

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let mainView = segue.destination as! ViewController
        mainView.clientName = tfName.text!
    }

}
