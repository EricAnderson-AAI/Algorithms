//
//  main.m
//  ALGAlgorithmsEdu
//
//  Created by Eric Anderson on 12/30/14.
//  Copyright (c) 2014 Eric Anderson. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ALGQuicksort.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        ALGQuicksort *quickSort = [ALGQuicksort new];
        NSLog(@"Quicksort: %@",
              [quickSort quicksort:[NSMutableArray
                                    arrayWithObjects:@3,@4,@2,@6,@56,@14,@33,@1,@9,@6, nil]]);
    }
    return 0;
}
