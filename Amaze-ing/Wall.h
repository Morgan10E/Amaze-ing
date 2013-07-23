//
//  Wall.h
//  Amaze-ing
//
//  Created by Morgan Tenney on 7/22/13.
//  Copyright (c) 2013 Morgan Tenney. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Wall : NSObject

@property (nonatomic) CGPoint begin;
@property (nonatomic) CGPoint end;

- (Wall *) initWithBegin: (CGPoint) begin andEnd: (CGPoint) end;

@end
