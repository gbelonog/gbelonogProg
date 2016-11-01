//
//  ViewController.m
//  app_with_2_buttons
//
//  Created by Galina on 05.10.16.
//  Copyright (c) 2016 GalyaHome. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}
- (IBAction)button1:(id)sender
{
    NSString *text = [NSString stringWithFormat: @"1"];
    self.label1.placeholderString = text;
}
- (IBAction)button2:(id)sender
{
    NSString *text = [NSString stringWithFormat: @"1"];
    self.label1.placeholderString = text;
}
- (IBAction)button3:(id)sender
{
    NSString *text = [NSString stringWithFormat: @"1"];
    self.label1.placeholderString = text;
}
- (IBAction)label1:(id)sender {
}




@end
