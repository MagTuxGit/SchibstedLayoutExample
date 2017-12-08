//
//  ExampleViewController.swift
//  LayoutExample
//
//  Created by Andriy Trubchanin on 12/7/17.
//  Copyright © 2017 Trand. All rights reserved.
//

import UIKit
import Layout

class ExampleViewController: LayoutViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let globalConstants: [String: Any] = [
            "titleFont": UIFont.systemFont(ofSize: 30)
        ]
        
        loadLayout(
            named: "Example.xml",
            constants: globalConstants, [
                "image": UIImage(named: "Rocket")!,
                "text": "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
            ])
    }
}
