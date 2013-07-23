//
//  MazeView.m
//  Amaze-ing
//
//  Created by Morgan Tenney on 7/22/13.
//  Copyright (c) 2013 Morgan Tenney. All rights reserved.
//

#import "MazeView.h"
#import "Wall.h"
#import "MazeViewController.h"
#import "MazeStore.h"

@interface MazeView()
{
    NSArray *_maze;
    int _level;
    BOOL _mazeBegan;
    
    CALayer *startButton;
    CALayer *endButton;
    UILabel *endLabel;
}

@end

@implementation MazeView

- (id)initWithFrame:(CGRect)r withLevel: (int) level
{
    self = [super initWithFrame:r];
    
    if (self) {
        _level = level;
        _maze = [[[MazeStore sharedStore] mazes] objectAtIndex:_level];
        
        [self setBackgroundColor:[UIColor lightGrayColor]];
        
        CGRect startRect = CGRectMake(30, 30, 45, 45);
        CGRect endRect = CGRectMake([self bounds].size.width-75, [self bounds].size.height-75, 45, 45);
        
        startButton = [[CALayer alloc] init];
        endButton = [[CALayer alloc] init];
        
        [startButton setBackgroundColor:[[UIColor greenColor] CGColor]];
        [startButton setCornerRadius:10];
        [endButton setBackgroundColor:[[UIColor redColor] CGColor]];
        [endButton setCornerRadius:10];
        
        [startButton setBounds:startRect];
        [startButton setPosition:CGPointMake(30,30)];
        [endButton setFrame:endRect];
        [endButton setPosition:CGPointMake([self bounds].size.width-30, [self bounds].size.height-30)];
        
        [[self layer] addSublayer:startButton];
        [[self layer] addSublayer:endButton];
    }
    return self;
}

- (id) initWithFrame:(CGRect)frame{
    return [self initWithFrame:frame withLevel:0];//Maze:@[]];
}

- (void) drawRect:(CGRect)rect{
    [self setBackgroundColor:[UIColor whiteColor]];
    UIBezierPath *path = [UIBezierPath bezierPath];
    [path setLineWidth:20];
    [path setLineCapStyle:kCGLineCapRound];
    
    for (Wall *w in _maze){
        [path moveToPoint:[w begin]];
        [path addLineToPoint:[w end]];
        [path stroke];
    }

}

- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    UITouch *touch = [touches anyObject];
    printf("Wall *wb = [[Wall alloc] initWithBegin:CGPointMake(%f, %f)", [touch locationInView:self].x, [touch locationInView:self].y);
    int width = startButton.bounds.size.width;
    int height = startButton.bounds.size.height;
    if ([self isPoint:[touch locationInView:self] inBoundsOf:CGRectMake(startButton.position.x - width/2.0, startButton.position.y - height/2.0, width, height)]){
        [self setNeedsDisplay];
        _mazeBegan = YES;
    }
}

- (void) touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{
    if (_mazeBegan){
        UITouch *touch = [touches anyObject];
        //NSLog(@"%f, %f", [touch locationInView:self].x, [touch locationInView:self].y);
        if ([self touchedLineAtPoint:[touch locationInView:self]]){
            [self setBackgroundColor:[UIColor redColor]];
            _mazeBegan = NO;
        }
        int width = endButton.bounds.size.width;
        int height = endButton.bounds.size.height;
        if ([self isPoint:[touch locationInView:self] inBoundsOf:CGRectMake(endButton.position.x - width/2.0, endButton.position.y - height/2.0, width, height)]){
            [self setBackgroundColor:[UIColor blueColor]];
            _level++;
            if (!(_level >= [[[MazeStore sharedStore] mazes] count]))
                _maze = [[[MazeStore sharedStore] mazes] objectAtIndex:_level];
            [self setNeedsDisplay];
            _mazeBegan = NO;
        }
        
    }
}

- (BOOL) isPoint: (CGPoint) point inBoundsOf: (CGRect) rect{
    if (point.x >= rect.origin.x && point.x <= (rect.origin.x+rect.size.width)){ //is the point within the x constraints of the rectangle
        if (point.y >= rect.origin.y && point.y <= (rect.origin.y+rect.size.height)){// y constraints
            return YES;
        }
    }
    return NO;
}

- (void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
    _mazeBegan = NO;
    [self setBackgroundColor:[UIColor lightGrayColor]];
    
    UITouch *touch = [touches anyObject];
    printf(" andEnd: CGPointMake(%f, %f)];\n", [touch locationInView:self].x, [touch locationInView:self].y);
}

- (BOOL) touchedLineAtPoint:(CGPoint) p{
    for (Wall * w in _maze){
        CGPoint start = [w begin];
        CGPoint end = [w end];
        
        for (float t = 0.0; t <= 1.0; t += 0.05){
            float x = start.x + t * (end.x - start.x);
            float y = start.y + t * (end.y - start.y);
            if (hypot(x - p.x, y - p.y) < 10)
                return YES;
        }
    }
    return NO;
}

@end
