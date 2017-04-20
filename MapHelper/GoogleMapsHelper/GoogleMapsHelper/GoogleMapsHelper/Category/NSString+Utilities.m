//
// Created by <#Project Developer#> on 20/04/2017.
// Copyright (c) 2017 <#Project Team#>. All rights reserved.
//

#import "NSString+Utilities.h"


@implementation NSString (Utilities)
-(NSString*)utilities_urlEncode
{
    NSString *result = (__bridge NSString*)CFURLCreateStringByAddingPercentEscapes(kCFAllocatorDefault, (CFStringRef)self, NULL, CFSTR(":/?#[]@!$&’()*+,;="), kCFStringEncodingUTF8);
    return result;
}

-(NSString*)utilities_urlDecode
{
    return (__bridge NSString*)CFURLCreateStringByReplacingPercentEscapesUsingEncoding(NULL,
            (CFStringRef) self,
            CFSTR(""),
            kCFStringEncodingUTF8);
}
@end
