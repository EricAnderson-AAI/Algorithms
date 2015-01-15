//
//  ALGFisherYatesShuffle.m
//  ALGAlgorithmsEdu
//
//  Created by Eric Anderson on 1/15/15.
//  Copyright (c) 2015 Eric Anderson. All rights reserved.
//

#import "ALGFisherYatesShuffle.h"

@implementation ALGFisherYatesShuffle

- (NSArray *)fisherYatesShuffle:(NSArray *)array {
    NSMutableArray *mutableArray = [NSMutableArray arrayWithArray:array];
    NSUInteger count = mutableArray.count;
    
    if (count > 1) {
        for (NSUInteger i = count - 1; i > 1; --i) {
            [mutableArray exchangeObjectAtIndex:i withObjectAtIndex:arc4random_uniform((u_int32_t)(i + 1))];
        }
    }
    return [NSArray arrayWithArray:mutableArray];
}

@end
