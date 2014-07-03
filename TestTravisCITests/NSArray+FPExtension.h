//
//  NSArray+FPExtension.h
//  TestTravisCI
//
//  Created by Alexander on 03.07.14.
//  Copyright (c) 2014 Alexander. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSNumber (FPExtension)

- (NSArray*)times:(id)obj;

- (NSArray*)to:(NSNumber*)numb;

@end

@interface NSArray (FPExtension)

- (NSArray*)map:(id(^)(id obj))mapBlock;

- (NSArray*)flattenMap:(NSArray*(^)(id obj))mapBlock;

@end
