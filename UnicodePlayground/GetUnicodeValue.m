//
//  GetUnicodeValue.m
//  UnicodePlayground
//
//  Created by Shawn Larson on 6/21/14.
//  Copyright (c) 2014 Shawn Larson. All rights reserved.
//

#import "GetUnicodeValue.h"

@implementation GetUnicodeValue

-(NSString *)returnUnicodeValue:(NSString *)unicodeString{
    unichar ch = [unicodeString characterAtIndex:0];
    return [NSString stringWithFormat:@"%d", ch];
}

-(NSString *)returnUnicodeHexValue:(NSString *)unicodeString{
    unichar ch = [unicodeString characterAtIndex:0];
    
    NSString *unicodeHex = [[NSString stringWithFormat:@"U+%04x", ch] uppercaseString]; //%02x
    

    return unicodeHex;

}

@end
