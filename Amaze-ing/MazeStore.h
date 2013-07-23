//
//  MazeStore.h
//  Amaze-ing
//
//  Created by Morgan Tenney on 7/22/13.
//  Copyright (c) 2013 Morgan Tenney. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MazeStore : NSObject

@property (nonatomic, strong) NSArray *mazes;

+(MazeStore *) sharedStore;

@end
