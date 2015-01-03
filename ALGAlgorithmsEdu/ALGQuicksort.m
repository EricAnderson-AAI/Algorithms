//
//  ALGQuicksort.m
//  ALGAlgorithmsEdu
//
//  Created by Eric Anderson on 12/30/14.
//  Copyright (c) 2014 Eric Anderson. All rights reserved.
//

#import "ALGQuicksort.h"

@interface ALGQuicksort ()
@property (nonatomic, assign) NSUInteger quicksortCount;
@end

@implementation ALGQuicksort

- (NSArray *)quicksort:(NSMutableArray *)unsortedArray {
    NSMutableArray *low = [NSMutableArray new];
    NSMutableArray *high = [NSMutableArray new];
    
    if ([unsortedArray count] < 1) {
        return nil;
    }
    
    int pivotPoint = arc4random() % [unsortedArray count];
    NSNumber *pivotValue = [unsortedArray objectAtIndex:pivotPoint];
    [unsortedArray removeObjectAtIndex:pivotPoint];
    
    for (NSNumber *num in unsortedArray) {
        self.quicksortCount++;
        
        if (num < pivotValue) {
            [low addObject:num];
        } else {
            [high addObject:num];
        }
    }
    
    NSMutableArray *sortedArray = [NSMutableArray new];
    [sortedArray addObjectsFromArray:[self quicksort:low]];
    [sortedArray addObject:pivotValue];
    [sortedArray addObjectsFromArray:[self quicksort:high]];

    return sortedArray;
}

@end
