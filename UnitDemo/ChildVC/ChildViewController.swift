//
//  ChildViewController.swift
//  UnitDemo
//
//  Created by 筱鹏 on 2019/4/25.
//  Copyright © 2019 筱鹏. All rights reserved.
//

import UIKit

class ChildViewController: UIViewController {

    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var detailTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

}

extension ChildViewController: UITextFieldDelegate, UITextViewDelegate {
    
}
