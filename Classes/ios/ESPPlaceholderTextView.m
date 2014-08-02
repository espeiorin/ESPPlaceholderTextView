//
//  ESPPlaceholderTextView.m
//  Placeholder
//
//  Created by André Gustavo Espeiorin on 01/07/14.
//  Copyright (c) 2014 Andre. All rights reserved.
//

#import "ESPPlaceholderTextView.h"

@implementation ESPPlaceholderTextView

- (void) awakeFromNib
{
    [super awakeFromNib];
    self.normalTextColor = self.textColor;
    if (self.text.length == 0) {
        self.text = self.placeholder;
        self.textColor = self.placeholderColor;
    }
}

#pragma mark - Placeholder Tweaks
- (CGRect) caretRectForPosition:(UITextPosition *)position
{
    if ([self.text isEqualToString:self.placeholder]) {
        position = [self positionFromPosition:[self beginningOfDocument]
                                       offset:0];
    } else {
        if ([self respondsToSelector:@selector(setSelectable:)]) {
            self.selectable = YES;
        }
    }
    
    return [super caretRectForPosition:position];
}

- (BOOL) isUserInteractionEnabled
{
    return !self.isFirstResponder || ![self.text isEqualToString:self.placeholder];
}

@end