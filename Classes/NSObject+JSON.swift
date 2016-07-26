//
//  NSObject+JSON.swift
//  MovieMakerApp
//
//  Created by Ihor Rapalyuk on 7/21/16.
//  Copyright © 2016 My. All rights reserved.
//

import Foundation

extension NSObject {
    
    public class func fromJson(jsonInfo: NSDictionary) -> Self {
        let object = self.init()
        
        (object as NSObject).updateWithDictionary(jsonInfo)
        
        return object
    }
    
    public class func fromAnyObject(object: AnyObject) -> Self {
        let objectCurrent = self.init()
        
        (objectCurrent as NSObject).updateWithAnyObject(object)
        
        return objectCurrent
    }
    
    public func updateWithAnyObject(object: AnyObject?) {
        if let jsonResult = object as? Dictionary<String, AnyObject> {
            self.updateWithDictionary(jsonResult)
        }
    }
    
    public func updateWithDictionary(jsonDictionary: NSDictionary) -> Self {
        for prop in self.propertyNames() {
            do {
                var object = jsonDictionary.objectForKey(prop.name)
                if let objectDict = object as? Dictionary<String, AnyObject>,
                    classType = NSClassFromString(prop.classString) as? NSObject.Type {
                    var embedObject = classType.init() as? AnyObject
                    embedObject?.updateWithAnyObject(objectDict)
                    try self.validateValue(&embedObject, forKey: prop.name)
                    self.setValue(embedObject, forKey: prop.name)
                } else {
                    try self.validateValue(&object, forKey: prop.name)
                    self.setValue(object, forKey: prop.name)
                }
            } catch {
                print("Failed to save \(prop.name)")
            }
        }
        return self
    }
    
    private func propertyNames() -> [(name: String, classString: String)] {
        var propertiesResult: [(name: String, classString: String)] = []
        var count: UInt32 = 0
        let properties = class_copyPropertyList(classForCoder, &count)
        for i in 0 ..< Int(count) {
            let property = properties[i]
            if let name = String.fromCString(property_getName(property)) {
                let classString = PropertyUtil.getPropertyType(property)
                
                propertiesResult.append((name: name, classString: classString))
            }
        }
        free(properties)
        return propertiesResult
    }
}
