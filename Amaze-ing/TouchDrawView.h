//
//  TouchDrawView.h
//  TouchTracker
//
//  Created by joeconway on 9/12/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
@class TouchViewController;

@interface TouchDrawView : UIView
{
    NSMutableDictionary *linesInProcess;

}

@property  NSMutableArray *completeLines;
@property TouchViewController *parentController;
- (void)clearAll;
- (void)endTouches:(NSSet *)touches;
@end
