//
//  ViewController.h
//  calculator
//
//  Created by Galina on 26.10.16.
//  Copyright © 2016 GalyaHome. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "modelCalculator.h"
//#import "modelCalculator.m"

@interface ViewController : NSViewController

@property (weak) IBOutlet NSTextField *label;


- (IBAction)numberButton:(id)sender;



@end

