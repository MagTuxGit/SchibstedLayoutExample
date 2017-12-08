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
    var name: String
}

class HelloViewController: LayoutViewController {

    //@IBOutlet var label: UILabel?
    @IBOutlet var txtField: UITextField?

    @IBAction func sayHello() {
        //label?.text = "Hello \(txtField?.text ?? "")"
        //layoutNode?.setState(["name": txtField?.text ?? ""])
        layoutNode?.setState(State(name: txtField?.text ?? ""))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        loadLayout(
            named: "Hello.xml",
            //state: ["name": ""]
            state: State(name: "")
        )
    }
}
