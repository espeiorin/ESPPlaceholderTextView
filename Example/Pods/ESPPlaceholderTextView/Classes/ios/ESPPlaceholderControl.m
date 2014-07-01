//
//  ESPPlaceholderControl.m
//  Placeholder
//
//  Created by André Gustavo Espeiorin on 01/07/14.
//  Copyright (c) 2014 Andre. All rights reserved.
//

#import "ESPPlaceholderControl.h"
#import "ESPPlaceholderTextView.h"

@implementation ESPPlaceholderControl

#pragma mark - UITextViewDelegate
- (void) textViewDidEndEditing:(UITextView *)aTextView
{
    ESPPlaceholderTextView *textView = (ESPPlaceholderTextView *)aTextView;
    if (textView.text.length == 0 || [textView.text isEqualToString:textView.placeholder]) {
        textView.text = textView.placeholder;
        textView.textColor = textView.placeholderColor;
    }
}

- (BOOL) textView:(UITextView *)aTextView
shouldChangeTextInRange:(NSRange)range
  replacementText:(NSString *)text
{
    ESPPlaceholderTextView *textView = (ESPPlaceholderTextView *)aTextView;
    if ([textView.text isEqualToString:textView.placeholder]) {
        if (text.length > 0) {
            textView.text = text;
            textView.textColor = textView.normalTextColor;
            return NO;
        }
        return NO;
    }
    
    NSString *tempStr = [textView.text stringByReplacingCharactersInRange:range withString:text];
    if (tempStr.length == 0) {
        textView.text = textView.placeholder;
        textView.textColor = textView.placeholderColor;
        return NO;
    }
    
    textView.textColor = textView.normalTextColor;
    
    BOOL returnValue = YES;
    
    for (id delegate in self.targets) {
        if ([delegate respondsToSelector:@selector(textView:shouldChangeTextInRange:replacementText:)]) {
            returnValue = returnValue && [delegate textView:textView
                                    shouldChangeTextInRange:range
                                            replacementText:text];
        }
    }
    
    return returnValue;
}

@end