//
//  SinglePool.m
//  LingDotSToolBox
//
//  Created by Tom-Li on 2020/4/24.
//  Copyright © 2020 Dong&Ling. All rights reserved.
//

#import "SinglePool.h"

/// 单例
@implementation SinglePool

+ (instancetype)share {
    static dispatch_once_t onceToken;
    static SinglePool *singlePool;
    dispatch_once(&onceToken, ^{
        singlePool = [[SinglePool alloc]init];
        
    });
    return singlePool;
}

+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    return [SinglePool share];
}

- (id)copyWithZone:(struct _NSZone *)zone {
    return [SinglePool share];
}

@end
