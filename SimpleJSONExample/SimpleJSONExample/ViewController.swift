//
//  ViewController.swift
//  SimpleJSONExample
//
//  Created by Ihor Rapalyuk on 7/22/16.
//  Copyright © 2016 Ihor Rapalyuk. All rights reserved.
//

import UIKit
import SimpleJSONParser

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let dictionary = NSMutableDictionary()
        dictionary.setValue("sdfsdf", forKey: "uniqueID")
        dictionary.setValue("valera", forKey: "name")
        dictionary.setValue("34", forKey: "age")
        
        let dictionary2 = NSMutableDictionary()
        dictionary2.setValue(["34", "56", "876"], forKey: "ids")
        dictionary.setValue(dictionary2, forKey: "test2")
        
        
        let test = Test.fromJson(dictionary)
        print(test.test2?.ids[0])
    }
}

