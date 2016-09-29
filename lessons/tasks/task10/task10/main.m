//
//  main.m
//  task10
//
//  Created by Galina on 29.09.16.
//  Copyright (c) 2016 GalyaHome. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        char name[10], city[10];
        int  age;
        NSLog(@"Please enter your name: ");
        gets(name);
        NSLog(@"In what city do you leave?");
        gets(city);
        NSLog(@"Please enter how old are you: ");
        scanf("%d", &age);
        
        NSLog(@"Your name is %s.", name);
        NSLog(@"You are %d.", age);
        NSLog(@"You live in %s.", city);
    }
    return 0;
}
