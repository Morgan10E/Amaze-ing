//
//  TouchViewController.m
//  Amaze-ing
//
//  Created by Matt Grossman on 7/23/13.
//  Copyright (c) 2013 Morgan Tenney. All rights reserved.
//

#import "TouchViewController.h"
#import "TouchDrawView.h"
#import "Line.h"
#import "Wall.h"
#import "MazeStore.h"

@interface TouchViewController ()

@end

@implementation TouchViewController

- (void)loadView{
    TouchDrawView *view = [[TouchDrawView alloc] initWithFrame:CGRectZero];
    [view setParentController:self];
    [self setCompleteLines:[view completeLines]];
    [self setView:view];
}

- (void)didClickBackButton{
    NSLog(@"Je;;");	
    NSMutableArray *walls = [[NSMutableArray alloc] init];
    
    for (Line *line in self.completeLines) {
        Wall *f = [[Wall alloc] initWithBegin: [line begin] andEnd: [line end]];
        [walls addObject:f];
    }
    [[[MazeStore sharedStore] mazes] replaceObjectAtIndex:0 withObject:walls];
    
    [[self navigationController] popToRootViewControllerAnimated:YES];
}


@end
