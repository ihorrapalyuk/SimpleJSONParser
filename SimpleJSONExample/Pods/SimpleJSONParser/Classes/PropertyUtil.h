//
//  PropertyUtil.h
//  MovieMakerApp
//
//  Created by Ihor Rapalyuk on 7/21/16.
//  Copyright © 2016 My. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "objc/runtime.h"

@interface PropertyUtil : NSObject

+ (NSString *)getPropertyType:(objc_property_t)property;

@end
