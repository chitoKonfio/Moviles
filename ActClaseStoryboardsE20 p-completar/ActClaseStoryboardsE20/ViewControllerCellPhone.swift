//
//  ViewControllerCellPhone.swift
//  ActClaseStoryboardsE20
//
//  Created by Alumno on 27/02/20.
//  Copyright © 2020 com.itesm. All rights reserved.
//

import UIKit

class ViewControllerCellPhone: UIViewController {
    
    @IBOutlet weak var tfCell: UITextField!
    @IBOutlet weak var imgSet: UIImageView!
    
    var cell: String!
    var img: UIImage!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tfCell.text = cell
        // imgSet.image = img
    }
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let mainView = segue.destination as! ViewController
        mainView.cellPhone = tfCell.text!
        mainView.profilePic = imgSet.image!
    }
    

}
