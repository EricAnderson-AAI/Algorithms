//
//  ALGInsertionSort.m
//  ALGAlgorithmsEdu
//
//  Created by Eric Anderson on 1/2/15.
//  Copyright (c) 2015 Eric Anderson. All rights reserved.
//

#import "ALGInsertionSort.h"

@interface ALGInsertionSort ()

@property (nonatomic, assign) NSInteger insertionCount;

@end

@implementation ALGInsertionSort

- (NSArray *)insertionSort:(NSMutableArray *)unsortedArray {
    long dataCount = unsortedArray.count;
    int j;
    
    for (int i = 1; i < dataCount; i++) {
        j = i;
        while (j > 0 && [[unsortedArray objectAtIndex:(j - 1)] intValue] >
                        [[unsortedArray objectAtIndex:j] intValue]) {
            
            [unsortedArray exchangeObjectAtIndex:j withObjectAtIndex:(j - 1)];
            j = j - 1;
            
            self.insertionCount++;
        }
    }
    return unsortedArray;
}

@end
