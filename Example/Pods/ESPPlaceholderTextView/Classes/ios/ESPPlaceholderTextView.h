//
//  ESPPlaceholderTextView.h
//  Placeholder
//
//  Created by André Gustavo Espeiorin on 01/07/14.
//  Copyright (c) 2014 Andre. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ESPPlaceholderControl;

@interface ESPPlaceholderTextView : UITextView

@property (nonatomic, strong) NSString *placeholder;
@property (nonatomic, strong) UIColor *placeholderColor;
@property (nonatomic, strong) UIColor *normalTextColor;

@end