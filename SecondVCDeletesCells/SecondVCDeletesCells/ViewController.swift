//
//  ViewController.swift
//  SecondVCDeletesCells
//
//  Created by Javier Calderon Jr. on 12/29/19.
//  Copyright © 2019 RockefellerFiles. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var delegate: DeleteRowInTableviewDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        if isMovingFromParent {
            delegate!.deleteRow(inTableview: 1)
        }
    }
    
    @IBAction func move(toListview sender: Any) {
        delegate!.deleteRow(inTableview: 1)
    }
}
