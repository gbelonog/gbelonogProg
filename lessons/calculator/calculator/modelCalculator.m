//
//  modelCalculator.m
//  calculator
//
//  Created by Galina on 04.11.16.
//  Copyright © 2016 GalyaHome. All rights reserved.
//

//#import <Foundation/Foundation.h>
#import "modelCalculator.h"
@implementation modelCalculator
/*typedef NS_ENUM(NSUInteger, Operation) {
    OperationPlus = 1,
    OperationMinus = 2,
    OperationMult = 3,
    OperationDev = 4,
};*/
//float number1 = 0;
//float number2 = 0;
//float result = 0;
//Operation operation = 0;
//bool error0 = false;

- (void)operationButtonTapping:(NSString *) modelOperation;
{
    if ([modelOperation isEqual: @"+"])
    {
        //operation = OperationPlus;
    }
    else
        if([modelOperation isEqual: @"-"])
        {
            //operation = OperationMinus;
        }
        else
            if([modelOperation isEqual: @"*"])
            {
                //operation = OperationMult;
            }
            else
                if([modelOperation isEqual: @"/"])
                {
                    //operation = OperationDev;
                }
    //return result;
}
@end
