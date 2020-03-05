//
//  Jugador.swift
//  TableViewController
//
//  Created by Alumno on 05/03/20.
//  Copyright © 2020 Alumno. All rights reserved.
//

import UIKit

class Jugador: NSObject {
    
    var nombre: String = ""
    var puntos: Int = 0
    var email: String = ""
    var pictureName: String!
    
    init (nombre: String, puntos: Int, email: String, picture: String) {
        self.nombre = nombre
        self.puntos = puntos
        self.email = email
        self.pictureName = picture
    }

}
