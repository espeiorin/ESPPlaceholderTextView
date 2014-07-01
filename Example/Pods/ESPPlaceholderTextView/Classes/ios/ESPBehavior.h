//
//  ESPBehavior.h
//  Placeholder
//
//  Created by André Gustavo Espeiorin on 01/07/14.
//  Copyright (c) 2014 Andre. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ESPBehavior : UIControl

@property (nonatomic, weak) IBOutlet id owner;
@property (nonatomic, strong) IBOutletCollection(id) NSArray *targets;

@end
