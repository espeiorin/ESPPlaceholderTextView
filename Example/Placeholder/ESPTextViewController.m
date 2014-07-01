//
//  ESPTextViewController.m
//  Placeholder
//
//  Created by André Gustavo Espeiorin on 01/07/14.
//  Copyright (c) 2014 Andre. All rights reserved.
//

#import "ESPTextViewController.h"

@interface ESPTextViewController ()

@end

@implementation ESPTextViewController

- (void) textViewDidBeginEditing:(UITextView *)textView
{
    NSLog(@"DID BEGIN EDITING");
}

- (BOOL) textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text
{
    NSLog(@"SHOULD CHANGE TEXT IN RANGE?");
    return YES;
}

@end
