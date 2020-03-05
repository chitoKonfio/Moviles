//
//  TableViewController.swift
//  TableViewController
//
//  Created by Alumno on 05/03/20.
//  Copyright © 2020 Alumno. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    
    // Crea un arreglo de objetos de tipo Jugador
    var listaDeJuagadores = [Jugador]()
    // crea un objeto que apunta a un arreglo de objetos de tipo jugador, pero no existe el arreglo de objetos
    var lista : [Jugador]!

    override func viewDidLoad() {
        super.viewDidLoad()
        let jug1 = Jugador(nombre: "David", puntos: 1800, email: "david@gmail.com", picture: "epn")
        let jug2 = Jugador(nombre: "Ruben", puntos: 2000, email: "edgar@gmail.com", picture:"steve")
        let jug3 = Jugador(nombre: "Said", puntos: 3000, email: "said@gmail.com", picture:"bill")
        
        listaDeJuagadores += [jug1, jug2, jug3]
    }

    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        return 1
//    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listaDeJuagadores.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        cell.textLabel?.text = listaDeJuagadores[indexPath.row].nombre
        cell.imageView?.image = UIImage(named: listaDeJuagadores[indexPath.row].pictureName)
        return cell
        
        
    }
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vista = segue.destination as! ViewController
        let indice = tableView.indexPathForSelectedRow!
        vista.thePlayer = listaDeJuagadores[indice.row]
        
    }
    

}
