//
//  ViewController.h
//  app_with_2_buttons
//
//  Created by Galina on 05.10.16.
//  Copyright (c) 2016 GalyaHome. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController

//@property(nonatomic, copy) IBOutlet UIl *label1;
- (IBAction)button1:(NSButton *)sender;

- (IBAction)label1:(id)sender;

@property (weak) IBOutlet NSTextField *label1;
//@property (weak) IBOutlet NSTextFieldCell *label_cell;

@property (weak) IBOutlet NSButton *button2;
@property (weak) IBOutlet NSButton *button3;

@end

