//
//  ViewController.m
//  calculator
//
//  Created by Galina on 26.10.16.
//  Copyright © 2016 GalyaHome. All rights reserved.
//

#import "ViewController.h"

/*typedef NS_ENUM(NSUInteger, Operation) {
    OperationPlus = 1,
    OperationMinus = 2,
    OperationMult = 3,
    OperationDev = 4,
};*/

@implementation ViewController
float number1 = 0;
float number2 = 0;
float result = 0;
//Operation operation = 0;
bool error0 = false;

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

    number1 = resultStr.intValue;
    
   // [self.label setTextColor:[NSColor greenColor]];
}
// +,-,*, /
- (IBAction)operationButton:(NSButton *)sender
{
    number2 = number1;
    [operationButtonTapping:  sender.title];
/*    if ([sender.title isEqual: @"+"])
    {
        operation = OperationPlus;
    }
    else
         if([sender.title isEqual: @"-"])
         {
             operation = OperationMinus;
         }
         else
             if([sender.title isEqual: @"*"])
             {
                 operation = OperationMult;
             }
             else
                 if([sender.title isEqual: @"/"])
                 {
                     operation = OperationDev;
                 }*/
    
    self.label.stringValue = @"0";
}
// =
- (IBAction)equalButton:(NSButton *)sender
{
    /*if (operation == 0)
    {
        result = number1 + number2;
    }
    else if (operation == 1)
    {
        result = number2 - number1;
    }*/
    switch (operation)
    
    {
        case OperationPlus:
            result = number1 + number2;
            break;
        case OperationMinus:
            result = number2 - number1;
            break;
        case OperationMult:
            result = number2 * number1;
            break;
        case OperationDev:
            if (number1 == 0)
            {
                error0 = true;
            }
                else
                {
                    result = number2 / number1;
                }
            break;
        default:
            result = 0;
            break;
    }
    if (error0 == true)
    {
        [self.label setTextColor:[NSColor redColor]];
        self.label.stringValue = @"Error. You cannot devide to 0.";
    }
    else
    {
        self.label.stringValue = [NSString stringWithFormat:@"%1.2f",result];
    }
}

- (IBAction)cButtonTapped:(NSButton *)sender
{
    self.label.stringValue = @"0";
    number1 = 0;
    number2 = 0;
    result = 0;
    error0 = false;
    [self.label setTextColor:[NSColor blackColor]];
}

@end

