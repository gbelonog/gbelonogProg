//
//  modelCalculator.h
//  calculator
//
//  Created by Galina on 08.11.16.
//  Copyright © 2016 GalyaHome. All rights reserved.
//

#ifndef modelCalculator_h
#define modelCalculator_h
#import <Foundation/Foundation.h>

@interface modelCalculator : NSObject
@property NSString *operation;
@property float number;
@property float number2;

- (void)operationButtonTapping:(NSString *) modelOperation;

@end

#endif /* modelCalculator_h */
