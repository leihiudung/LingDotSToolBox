//
//  EncodeObject.m
//  LingDotSToolBox
//
//  Created by Tom-Li on 2020/4/24.
//  Copyright © 2020 Dong&Ling. All rights reserved.
//

#import "EncodeObject.h"
#include <CommonCrypto/CommonDigest.h>

@implementation EncodeObject
- (instancetype)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}

/// 加密为MD5字符串
/// @param str 待加密的字符串
+ (void)encodeString:(NSString *)str {
    const char *cStr = [str UTF8String];
    unsigned char result[CC_MD5_DIGEST_LENGTH];
    CC_MD5(cStr, (CC_LONG)strlen(cStr), result);
    NSData *data = [NSData dataWithBytes:result length:sizeof(result)];
    NSString *string = [data base64EncodedStringWithOptions:NSDataBase64Encoding64CharacterLineLength];
    NSLog(@"done");
}

@end
