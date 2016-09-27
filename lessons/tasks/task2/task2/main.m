//
//  main.m
//  task2
//
//  Created by Galina on 27.09.16.
//  Copyright (c) 2016 GalyaHome. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int  num, step;
        NSLog(@"Please enter a number: ");
        scanf("%d", &num);
        NSLog(@"Please enter a step: ");
        scanf("%d", &step);
        if (num <= 100)
        {
            NSLog(@"%d ", num = pow(num, step));
        }
        else
            NSLog(@" Number is > 100");
        
            
        
    }
    return 0;
}

