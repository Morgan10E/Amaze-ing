//
//  Wall.m
//  Amaze-ing
//
//  Created by Morgan Tenney on 7/22/13.
//  Copyright (c) 2013 Morgan Tenney. All rights reserved.
//

#import "Wall.h"

@implementation Wall

- (Wall *) initWithBegin: (CGPoint) begin andEnd: (CGPoint) end{
    self = [super init];
    [self setBegin:begin];
    [self setEnd:end];
    return self;
}

@end
