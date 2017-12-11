//
//  HelloViewController.swift
//  LayoutExample
//
//  Created by Andriy Trubchanin on 12/8/17.
//  Copyright © 2017 Trand. All rights reserved.
//

import UIKit
import Layout

struct State {
    var greeting: String
    var name: String
}

class HelloViewController: LayoutViewController, UITextFieldDelegate {

    //@IBOutlet var label: UILabel?
    
    // delegate is automatically bound to the VC
    @IBOutlet var txtGreeting: UITextField?
    @IBOutlet var txtName: UITextField?

    @IBAction func sayHello() {
        //label?.text = "Hello \(txtField?.text ?? "")"
        //layoutNode?.setState(["name": txtField?.text ?? ""])
        layoutNode?.setState(State(greeting: txtGreeting?.text ?? "", name: txtName?.text ?? ""))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        loadLayout(
            named: "Hello.xml",
            //state: ["name": ""]
            state: State(greeting: "", name: "")
        )
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        if textField == txtGreeting {
            txtName?.becomeFirstResponder()
        } else if textField == txtName {
            sayHello()
        }
        return false
    }
}
