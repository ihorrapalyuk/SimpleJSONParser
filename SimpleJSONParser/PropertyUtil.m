//
//  PropertyUtil.m
//  MovieMakerApp
//
//  Created by Ihor Rapalyuk on 7/21/16.
//  Copyright © 2016 My. All rights reserved.
//

#import "PropertyUtil.h"

@implementation PropertyUtil

+ (NSString *)getPropertyType:(objc_property_t)property
{
    const char *attributes = property_getAttributes(property);
    char buffer[1 + strlen(attributes)];
    strcpy(buffer, attributes);
    char *state = buffer, *attribute;
    while ((attribute = strsep(&state, ",")) != NULL) {
        if (attribute[0] == 'T') {
            if (strlen(attribute) <= 4) {
                break;
            }
            return [NSString stringWithFormat:@"%s", (const char *)[[NSData dataWithBytes:(attribute + 3) length:strlen(attribute) - 4] bytes]];
        }
    }
    return @"@";
}

@end
