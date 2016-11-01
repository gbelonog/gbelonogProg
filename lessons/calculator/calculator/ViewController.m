//
//  ViewController.m
//  calculator
//
//  Created by Galina on 26.10.16.
//  Copyright © 2016 GalyaHome. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController
int number;
int number2;
int operation;

- (void)viewDidLoad {
    [super viewDidLoad];
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];
}

//0,1,2
- (IBAction)numberButton:(NSButton *)sender
{

    self.label.stringValue = sender.title;
//    number = self.label.stringValue.intValue;
    number = sender.title.intValue;
    
   // [self.label setTextColor:[NSColor greenColor]];
}

- (IBAction)operationButton:(NSButton *)sender
{
    number2 = number;
    if ([sender.title isEqual: @"+"])
    {
        //number = number + number2;
        operation = 0;
    }
    //self.label.stringValue = @"0";
}
- (IBAction)equalButton:(id)sender
{
    if (operation == 0)
    {
        number += number2;
    }
    self.label.stringValue = [NSString stringWithFormat:@"%d",number];
}

@end

