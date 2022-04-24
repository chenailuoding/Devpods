//
//  ViewController.swift
//  Devpods
//
//  Created by chenailuoding on 04/18/2022.
//  Copyright (c) 2022 chenailuoding. All rights reserved.
//

import UIKit
import Devpods

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let color = LYColor.ly_color(red: 120, green: 100, blue: 30, alpha: 0.7)
        let colorView = UIView()
        colorView.frame = CGRect(x: 20, y: 60, width: 100, height: 100)
        colorView.backgroundColor = color
        self.view.addSubview(colorView)
        
        let randColor = LYColor.ly_randomColor()
        let colorView2 = UIView()
        colorView2.frame = CGRect(x: 20, y: 180, width: 100, height: 100)
        colorView2.backgroundColor = randColor
        self.view.addSubview(colorView2)
        
        let hexColor = LYColor.ly_hexStrColor(hexStr: "0xaabbcc")
        let colorView3 = UIView()
        colorView3.frame = CGRect(x: 20, y: 300, width: 100, height: 100)
        colorView3.backgroundColor = hexColor
        self.view.addSubview(colorView3)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

