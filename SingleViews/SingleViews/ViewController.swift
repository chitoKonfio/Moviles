//
//  ViewController.swift
//  SingleViews
//
//  Created by Alumno on 02/03/20.
//  Copyright © 2020 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var list = ["a", "b", "c", "d", "e", "f"]
    
    
    @IBOutlet weak var table: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Lista de datos"
    }
    
    // MARK: - Table view Methods
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "idCell")!
        cell.textLabel?.text = list[indexPath.row]
        cell.detailTextLabel?.text = String(indexPath.row)
        cell.imageView?.image = UIImage(named: "user-img")
        return cell
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let vistaDetalle = segue.destination as! ViewControllerDetail
        let indice = table.indexPathForSelectedRow!
        vistaDetalle.dataMostrar = list[indice.row]
    }


}

