//
// Created by <#Project Developer#> on 20/04/2017.
// Copyright (c) 2017 <#Project Team#>. All rights reserved.
//

#import "NSDictionary+Utilities.h"


@implementation NSDictionary (Utilities)
- (id)utilities_objectForKeyNotNull:(id)key
{
    id object = [self objectForKey:key];
    if (object == [NSNull null])
        return @"";

    return object;
}
@end
