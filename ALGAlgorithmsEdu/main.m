//
//  main.m
//  ALGAlgorithmsEdu
//
//  Created by Eric Anderson on 12/30/14.
//  Copyright (c) 2014 Eric Anderson. All rights reserved.
//

@import Foundation;
@import QuartzCore;

#import "ALGQuicksort.h"
#import "ALGInsertionSort.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSMutableArray *unsortedArray = [NSMutableArray arrayWithObjects:@1,@3,@2,@4,@6,@5,@7,@9,@8,@10, nil];
        
        ALGQuicksort *quickSort = [ALGQuicksort new];
        
        CFTimeInterval startTime = CACurrentMediaTime();
        NSLog(@"%@", [quickSort quicksort:unsortedArray]);
        CFTimeInterval elapsedTime = CACurrentMediaTime() - startTime;
        NSLog(@"Quicksort time: %f", elapsedTime);
    }
    return 0;
}