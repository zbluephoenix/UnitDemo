//
//  ViewController.swift
//  UnitDemo
//
//  Created by 筱鹏 on 2019/4/25.
//  Copyright © 2019 筱鹏. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var viewOfWindow:UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let button = UIButton(type: .custom)
        button.setTitle("enter Child VC", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.addTarget(self, action: #selector(buttonAction(_:)), for: .touchUpInside)
        button.frame = CGRect(x: 100, y: 100, width: 100, height: 200)
        view.addSubview(button)
    }

    func showViewToWindow() {
        hideViewFromWindow()
        viewOfWindow = UIView(frame: view.bounds);
        viewOfWindow.backgroundColor = .red;
        viewOfWindow.tag = 100;
        UIApplication.shared.keyWindow?.addSubview(viewOfWindow)
    }
    
    func hideViewFromWindow() {
        if let view = viewOfWindow {
            view.removeFromSuperview()
        }
    }

}

extension ViewController {
    @objc func buttonAction(_ sender: Any) {
        let childStoryBoard = UIStoryboard(name: "ChildViewController", bundle: nil)
        let childVC = childStoryBoard.instantiateViewController(withIdentifier: "ChildViewController")
        navigationController?.pushViewController(childVC, animated: true)
    }
    
    @objc func cancelAction(_ sender: Any) {
        hideViewFromWindow()
    }
}

