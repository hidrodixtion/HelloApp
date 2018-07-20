//
//  ViewController.swift
//  HelloApp
//
//  Created by Adi Nugroho on 19/07/18.
//  Copyright © 2018 Lonely Box. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtWelcome: UILabel!
    @IBOutlet weak var btnContinue: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        txtWelcome.text = NSLocalizedString("Welcome", comment: "")
        btnContinue.setTitle(NSLocalizedString("Continue", comment: ""), for: .normal)
    }

}

