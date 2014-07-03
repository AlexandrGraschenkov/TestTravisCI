//
//  NSArray+FPExtension.m
//  TestTravisCI
//
//  Created by Alexander on 03.07.14.
//  Copyright (c) 2014 Alexander. All rights reserved.
//

#import "NSArray+FPExtension.h"



@implementation NSNumber (FPExtension)

- (NSArray*)times:(id)obj
{
    NSInteger count = self.integerValue;
    NSMutableArray *result = [NSMutableArray arrayWithCapacity:count];
    while (count-- > 0) {
        [result addObject:obj];
    }
    return [result copy];
}

- (NSArray*)to:(NSNumber*)numb
{
    NSInteger fromValue = self.integerValue;
    NSInteger toValue = numb.integerValue;
    NSInteger inc = toValue > fromValue? 1 : -1;
    NSMutableArray *result = [NSMutableArray new];
    for(NSInteger i = self.integerValue; i != toValue; i+=inc) {
        [result addObject:@(i)];
    }
    return [result copy];
}

@end



@implementation NSArray (FPExtension)

- (NSArray*)map:(id(^)(id obj))mapBlock
{
    NSMutableArray *result = [NSMutableArray arrayWithCapacity:self.count];
    for(id obj in self) {
        [result addObject:mapBlock(obj)];
    }
    return [result copy];
}

- (NSArray*)flattenMap:(NSArray*(^)(id obj))mapBlock
{
    NSMutableArray *result = [NSMutableArray arrayWithCapacity:self.count];
    for(id obj in self) {
        [result addObjectsFromArray:mapBlock(obj)];
    }
    return [result copy];
}

@end
