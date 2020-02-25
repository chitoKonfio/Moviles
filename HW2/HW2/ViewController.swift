//
//  ViewController.swift
//  HW2
//
//  Created by INTERN on 23/02/20.
//  Copyright © 2020 INTERN. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lbYear: UILabel!
    @IBOutlet weak var lbMonth: UILabel!
    @IBOutlet weak var lbDay: UILabel!
    @IBOutlet weak var lbDayWeek: UILabel!
    

    var currentDate = Date();
    let dateFormat: DateFormatter = DateFormatter();
    
    
    override func viewDidLoad() {
        super.viewDidLoad();
        let swipeLeft = UISwipeGestureRecognizer(target: self, action:#selector(self.swipeGesture(_:)))
        swipeLeft.direction = UISwipeGestureRecognizer.Direction.left
        self.view.addGestureRecognizer(swipeLeft)
        let swipeRight = UISwipeGestureRecognizer(target: self, action:#selector(self.swipeGesture(_:)))
        swipeRight.direction = UISwipeGestureRecognizer.Direction.right
        self.view.addGestureRecognizer(swipeRight)
        showDateInfo();
    }
    
    func changeDate (change: Double) {
        let newDate = currentDate.addingTimeInterval(86400 * change);
        currentDate = newDate;
        showDateInfo();
    }
    
    func showDateInfo() {
        dateFormat.dateFormat = "dd";
        var fechaEnString = dateFormat.string(from: currentDate);
        lbDay.text = "\(fechaEnString)";
        
        dateFormat.dateFormat = "yyyy";
        fechaEnString = dateFormat.string(from: currentDate);
        lbYear.text = "\(fechaEnString)";
        
        dateFormat.dateFormat = "LLLL";
        fechaEnString = dateFormat.string(from: currentDate);
        lbMonth.text = "\(fechaEnString)";
        
        dateFormat.dateFormat = "EEEE";
        fechaEnString = dateFormat.string(from: currentDate);
        lbDayWeek.text = "\(fechaEnString)";
    }
    
    @IBAction func swipeGesture(_ sender: UISwipeGestureRecognizer) {
        if sender.state == .ended {
            switch sender.direction {
                case .right:
                    changeDate(change: -1);
                    break;
                case .left:
                    changeDate(change: 1);
                    break;
                default:
                    break;
            }
        }
    }
    
}

