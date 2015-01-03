//
//  ALGInsertionSort.h
//  ALGAlgorithmsEdu
//
//  Created by Eric Anderson on 1/2/15.
//  Copyright (c) 2015 Eric Anderson. All rights reserved.
//

@import Foundation;

@interface ALGInsertionSort : NSObject

// Efficient on smaller datasets
// More efficient than selection and bubble sort
- (NSArray *)insertionSort:(NSMutableArray *)unsortedArray;

@end
