//
//  NSArray+FPExtension.m
//  TestTravisCI
//
//  Created by Alexander on 03.07.14.
//  Copyright (c) 2014 Alexander. All rights reserved.
//

#import "NSArray+FPExtension.h"

@implementation NSArray (FPExtension)

- (NSArray*)map:(id(^)(id obj))mapBlock
{
    NSMutableArray *result = [NSMutableArray arrayWithCapacity:self.count];
    for(id obj in self) {
        [result addObject:mapBlock(obj)];
    }
    return [result copy];
}

@end
