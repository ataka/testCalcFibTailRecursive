//
//  RecFibObjc.m
//  RecFib
//
//  Created by 安宅 正之 on 2015/02/13.
//  Copyright (c) 2015年 MasayukiAtaka. All rights reserved.
//

#import "RecFibObjc.h"

@implementation RecFibObjc

- (NSInteger)fib:(NSInteger)n
{
    if (n < 3) {
        return 1;
    } else {
        return [self fib:n-1] + [self fib:n-2];
    }
}

- (NSInteger)fibTail:(NSInteger)n
{
    return [self fibInner:n a:1 b:0];
}

- (NSInteger)fibInner:(NSInteger)n a:(NSInteger)a b:(NSInteger)b
{
    if (n == 0) {
        return b;
    } else {
        return [self fibInner:n-1 a:a+b b:a];
    }
}
@end
