# GooglePlacesPicker
Swift IOS Pod. SimpleJSONParser lets a user simply parse JSON to any NSObject.

Import:

        import SimpleJSONParser

Cocoapods:

        pod 'SimpleJSONParser'

1) Here is an example how it works

        let dictionary = NSMutableDictionary()
        dictionary.setValue("sdfsdf", forKey: "uniqueID")
        dictionary.setValue("valera", forKey: "name")
        dictionary.setValue("34", forKey: "age")
        
        let dictionary2 = NSMutableDictionary()
        dictionary2.setValue(["34", "56", "876"], forKey: "ids")
        dictionary.setValue(dictionary2, forKey: "test2")
        
        
        let test = TestClass.fromJson(dictionary)


////////// Test Model
        //
        //  TestClass.swift
        //  MovieMakerApp
        //
        //  Created by Ihor Rapalyuk on 7/21/16.
        //  Copyright © 2016 My. All rights reserved.
        //

        import Foundation

        public class TestClass: NSObject {
            
            var uniqueID: String?
            var name: String?
            var age: Int = 0
            var test2: TestClass2?
        }

        public class TestClass2: NSObject {
            var ids: [String] = []
        }
/////////


