//
//  ViewController.swift
//  Kem ko em
//
//  Created by Chien on 3/14/18.
//  Copyright © 2018 Chien. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var dataVC : String?
    @IBOutlet weak var txtData: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        txtData.text = dataVC
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        dataVC = txtData.text
    }
}
