//
//  ESPBehavior.m
//  Placeholder
//
//  Created by André Gustavo Espeiorin on 01/07/14.
//  Copyright (c) 2014 Andre. All rights reserved.
//

#import "ESPBehavior.h"
#import <objc/runtime.h>

@implementation ESPBehavior

#pragma mark - Association
- (void)setOwner:(id)owner
{
    if (_owner != owner) {
        [self releaseLifetimeFromObject:_owner];
        _owner = owner;
        [self bindLifetimeToObject:_owner];
    }
}

- (void)bindLifetimeToObject:(id)object
{
    objc_setAssociatedObject(object, (__bridge void *)self, self, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (void)releaseLifetimeFromObject:(id)object
{
    objc_setAssociatedObject(object, (__bridge void *)self, nil, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

#pragma mark - Method Forwarding
- (NSMethodSignature *) methodSignatureForSelector:(SEL)aSelector
{
    NSMethodSignature *sig = [super methodSignatureForSelector:aSelector];
    if (!sig) {
        for (id obj in self.targets) {
            if ((sig = [obj methodSignatureForSelector:aSelector])) {
                break;
            }
        }
    }
    return sig;
}

- (BOOL) respondsToSelector:(SEL)aSelector
{
    BOOL base = [super respondsToSelector:aSelector];
    if (!base) {
        NSArray *filtered = [self.targets filteredArrayUsingPredicate:[NSPredicate predicateWithBlock:^BOOL(id evaluatedObject, NSDictionary *bindings) {
            return [evaluatedObject respondsToSelector:aSelector];
        }]];
        base = filtered.count > 0;
    }
    return base;
}

- (void) forwardInvocation:(NSInvocation *)anInvocation
{
    for (id<UITextViewDelegate> delegate in self.targets) {
        @autoreleasepool {
            if ([delegate respondsToSelector:anInvocation.selector]) {
                [anInvocation invokeWithTarget:delegate];
            }
        }
    }
}

@end
