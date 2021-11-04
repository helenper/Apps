//
//  ViewController.swift
//  knitt_increase_decrease
//
//  Created by Helén Persson on 31/10/2020.
//  Copyright © 2020 Helén Persson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Properties

    @IBOutlet weak var inc_dec_choice: UISegmentedControl!
    
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var stitches_startLbl: UILabel!
    @IBOutlet weak var stitches_changeLbl: UILabel!
    @IBOutlet weak var resultLbl: UILabel!
    
    @IBOutlet weak var stitches_start: UITextField!
    @IBOutlet weak var stitches_change: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        resultLbl.text = ""

    
    }

    // Actions

}


