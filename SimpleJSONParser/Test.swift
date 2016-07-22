//
//  Test.swift
//  MovieMakerApp
//
//  Created by Ihor Rapalyuk on 7/21/16.
//  Copyright © 2016 My. All rights reserved.
//

import Foundation

public class Test: NSObject {
    
    var uniqueID: String?
    var name: String?
    var age: Int = 0
    var test2: Test2?
}

public class Test2: NSObject {
    var ids: [String] = []
}