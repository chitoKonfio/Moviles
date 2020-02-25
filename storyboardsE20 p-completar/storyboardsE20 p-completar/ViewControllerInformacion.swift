//
//  ViewControllerInformacion.swift
//  storyboardsE20 p-completar
//
//  Created by Alumno on 24/02/20.
//  Copyright © 2020 com.itesm. All rights reserved.
//

import UIKit

class ViewControllerInformacion: UIViewController {
    
    @IBOutlet weak var imgFoto: UIImageView!
    @IBOutlet weak var LbAncho: UILabel!
    @IBOutlet weak var LbAltura: UILabel!
    
    var foto: UIImage!
    var ancho: CGFloat!
    var altura: CGFloat!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        imgFoto.image = foto
        LbAncho.text = String(describing: ancho!)
        LbAltura.text = String(describing: altura!)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
