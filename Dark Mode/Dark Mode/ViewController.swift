//
//  ViewController.swift
//  Dark Mode
//
//  Created by Antonio Adrian Chavez on 10/23/18.
//  Copyright © 2018 Antonio Adrian Chavez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  
    @IBOutlet weak var darkSwitch: UISwitch!
    
    
    var isDark = false {
        didSet{
        darkSwitch.isOn = isDark
        if isDark {
            view.backgroundColor = .black
        }else{
            view.backgroundColor = .white
        }
            
        }
        
      }


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        isDark = UserDefaults.standard.bool(forKey: "DarkDefault")
        darkSwitch.addTarget(self, action: #selector(darkSwitchChanged(_:)), for: .valueChanged)
        
    }

    
    @objc
    @IBAction func darkSwitchChanged(_ uiSwitch: UISwitch) {
        isDark = uiSwitch.isOn
        UserDefaults.standard.set(uiSwitch.isOn, forKey: "DarkDefault")
    }
    
}

