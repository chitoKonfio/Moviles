//
//  ViewController.swift
//  UIView
//
//  Created by Alumno on 17/02/20.
//  Copyright © 2020 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var viewBlack: UIView!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var imgBall: UIImageView!
    
    @IBOutlet weak var viewRed: UIView!
    @IBOutlet weak var lbAnimated: UILabel!
    @IBOutlet weak var controllerDirec: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func changePositionSlider(_ sender: UISlider) {
        let position = CGFloat(sender.value) * viewBlack.frame.width;
        imgBall.frame.origin.x = position
    }
    
    
    @IBAction func changeAnimation(_ sender: UISegmentedControl) {
        
        let direction = controllerDirec.selectedSegmentIndex
        
        switch (direction) {
            case 0:
                UIView.animate(withDuration: 2) {
                    self.lbAnimated.frame.origin.x = 25;
                }
            case 1:
                UIView.animate(withDuration: 2) {
                    self.lbAnimated.frame.origin.x = 300;
                }
            default:
                print ("error")
        }
            
    }
    
}

