//
//  NSArray+FPExtension.h
//  TestTravisCI
//
//  Created by Alexander on 03.07.14.
//  Copyright (c) 2014 Alexander. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (FPExtension)

- (NSArray*)map:(id(^)(id obj))mapBlock;

@end
