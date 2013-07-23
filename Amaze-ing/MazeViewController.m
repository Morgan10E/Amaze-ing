//
//  MazeViewController.m
//  Amaze-ing
//
//  Created by Morgan Tenney on 7/22/13.
//  Copyright (c) 2013 Morgan Tenney. All rights reserved.
//

#import "MazeViewController.h"
#import "MazeStore.h"
#import "Wall.h"
#import "MazeView.h"

@interface MazeViewController()
{
    int _level;
}

@end

@implementation MazeViewController

- (id) init{
    self = [super init];
    if (self){
        _level = 0;
    }
    return self;
}

- (void) loadView{
    [self setView:[[MazeView alloc] initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height) withLevel:0]];//withMaze: [[[MazeStore sharedStore] mazes] objectAtIndex:_level]]];
}

- (void) levelUp{
    _level++;
    if (_level >= [[[MazeStore sharedStore] mazes] count]){
        NSLog(@"NO MORE MAZES");
    } else{
        [self loadView];
    }
        
}

@end
