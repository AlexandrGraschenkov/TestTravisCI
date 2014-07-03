//
//  TestTravisCITests.m
//  TestTravisCITests
//
//  Created by Alexander on 03.07.14.
//  Copyright (c) 2014 Alexander. All rights reserved.
//

#import <Kiwi.h>
#import "NSArray+FPExtension.h"

SPEC_BEGIN(FPExtensions)

describe(@"[Array", ^{
    context(@"map:]", ^{
        let(arr, ^id{
            return @[@1, @2, @3];
        });
        let(mutArr, ^id{
            return [@[@1, @2, @3] mutableCopy];
        });
        
        it(@"shoult correctly maped into strings", ^{
            [[[arr map:^id(NSNumber *obj) {
                return obj.stringValue;
            }] should] equal:@[@"1", @"2", @"3"]];
        });
        
        it(@"after map should have NSArray type", ^{
            [[[mutArr map:^id(id obj) {
                return obj;
            }] should] beKindOfClass:[NSArray class]];
        });
    });
    
    context(@"flattenMap:]", ^{
        let(arr, ^id{
            return @[@1, @2, @3];
        });
        
        it(@"should pass simple test", ^{
            [[[arr flattenMap:^NSArray *(NSNumber *obj) {
                return [obj times:obj];
            }] should] equal:@[@1, @2, @2, @3, @3, @3]];
        });
    });
});

SPEC_END