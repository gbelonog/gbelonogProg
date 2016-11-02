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
    //NSString *str = [NSString stringWithFormat : self.label.stringValue, sender.title];
    NSString *labelStr, *resultStr;
    labelStr = self.label.stringValue;
    
    if ([labelStr  isEqual: @"0"])
    {
        resultStr = sender.title;
    }
    else
    {
        resultStr = [labelStr stringByAppendingString : sender.title];
    }
    
    self.label.stringValue = resultStr;
 //   self.label.stringValue = sender.title;
//    number = self.label.stringValue.intValue;
    //number = sender.title.intValue;
    number = resultStr.intValue;
    
   // [self.label setTextColor:[NSColor greenColor]];
}
// +
- (IBAction)operationButton:(NSButton *)sender
{
    number2 = number;
    if ([sender.title isEqual: @"+"])
    {
        //number = number + number2;
        //operation = 0;
        number += number2;
    }
    else
         if([sender.title isEqual: @"-"])
         {
             number -= number2;
         }
    
    self.label.stringValue = @"0";
}
// =
- (IBAction)equalButton:(id)sender
{
    /*if (operation == 0)
    {
        number += number2;
    }*/
    self.label.stringValue = [NSString stringWithFormat:@"%d",number];
}

- (IBAction)CButton:(id)sender
{
     self.label.stringValue = @"0";
}

@end

