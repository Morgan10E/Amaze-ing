//
//  MazeStore.m
//  Amaze-ing
//
//  Created by Morgan Tenney on 7/22/13.
//  Copyright (c) 2013 Morgan Tenney. All rights reserved.
//

#import "MazeStore.h"
#import "Wall.h"

@interface MazeStore()
{
    NSArray *_mazes;
}
@end

@implementation MazeStore

@synthesize mazes = _mazes;

- (id) init{
    self = [super init];
    if (self){
        Wall *wa = [[Wall alloc] initWithBegin:CGPointMake(200, 0) andEnd:CGPointMake(200, 200)];
        Wall *wb = [[Wall alloc] initWithBegin:CGPointMake(0, 400) andEnd:CGPointMake(400, 400)];
        Wall *wc = [[Wall alloc] initWithBegin:CGPointMake(400, 200) andEnd:CGPointMake(400, 600)];
        Wall *wd = [[Wall alloc] initWithBegin:CGPointMake(600, 0) andEnd:CGPointMake(600, 200)];
        Wall *we = [[Wall alloc] initWithBegin:CGPointMake(0, 600) andEnd:CGPointMake(200, 600)];
        Wall *wf = [[Wall alloc] initWithBegin:CGPointMake(600, 400) andEnd:CGPointMake(600, 800)];
        Wall *wg = [[Wall alloc] initWithBegin:CGPointMake(150, 800) andEnd:CGPointMake(800, 800)];
        
        NSArray *maze0 = @[wa, wb, wc, wd, we, wf, wg];
        
        
        
        Wall *w1 = [[Wall alloc] initWithBegin:CGPointMake(100, 0) andEnd:CGPointMake(100, 100)];
        Wall *w2 = [[Wall alloc] initWithBegin:CGPointMake(0, 200) andEnd:CGPointMake(200, 200)];
        Wall *w3 = [[Wall alloc] initWithBegin:CGPointMake(200, 100) andEnd:CGPointMake(200, 300)];
        Wall *w4 = [[Wall alloc] initWithBegin:CGPointMake(300, 0) andEnd:CGPointMake(300, 100)];
        Wall *w5 = [[Wall alloc] initWithBegin:CGPointMake(300, 200) andEnd:CGPointMake(300, 500)];
        Wall *w6 = [[Wall alloc] initWithBegin:CGPointMake(0, 300) andEnd:CGPointMake(100, 300)];
        Wall *w7 = [[Wall alloc] initWithBegin:CGPointMake(100, 500) andEnd:CGPointMake(675, 500)];
        Wall *w8 = [[Wall alloc] initWithBegin:CGPointMake(100, 500) andEnd:CGPointMake(100, 700)];
        Wall *w9 = [[Wall alloc] initWithBegin:CGPointMake(430, 100) andEnd:CGPointMake(430, 400)];
        Wall *w10 = [[Wall alloc] initWithBegin:CGPointMake(430, 400) andEnd:CGPointMake(800, 400)];
        Wall *w11 = [[Wall alloc] initWithBegin:CGPointMake(100, 400) andEnd:CGPointMake(300, 400)];
        Wall *w12 = [[Wall alloc] initWithBegin:CGPointMake(530, 300) andEnd:CGPointMake(650, 300)];
        Wall *w13 = [[Wall alloc] initWithBegin:CGPointMake(530, 0) andEnd:CGPointMake(530, 300)];
        Wall *w14 = [[Wall alloc] initWithBegin:CGPointMake(650, 100) andEnd:CGPointMake(650, 300)];
        Wall *w15 = [[Wall alloc] initWithBegin:CGPointMake(200, 900) andEnd:CGPointMake(200, 1050)];
        Wall *w16 = [[Wall alloc] initWithBegin:CGPointMake(200, 600) andEnd:CGPointMake(425, 600)];
        Wall *w17 = [[Wall alloc] initWithBegin:CGPointMake(550, 600) andEnd:CGPointMake(800, 600)];
        Wall *w18 = [[Wall alloc] initWithBegin:CGPointMake(0, 800) andEnd:CGPointMake(200, 800)];
        Wall *w19 = [[Wall alloc] initWithBegin:CGPointMake(100, 700) andEnd:CGPointMake(200, 700)];
        Wall *w20 = [[Wall alloc] initWithBegin:CGPointMake(200, 800) andEnd:CGPointMake(200, 700)];
        Wall *w21 = [[Wall alloc] initWithBegin:CGPointMake(300, 700) andEnd:CGPointMake(430, 700)];
        Wall *w22 = [[Wall alloc] initWithBegin:CGPointMake(300, 700) andEnd:CGPointMake(300, 600)];
        Wall *w23 = [[Wall alloc] initWithBegin:CGPointMake(100, 900) andEnd:CGPointMake(100, 1050)];
        Wall *w24 = [[Wall alloc] initWithBegin:CGPointMake(300, 800) andEnd:CGPointMake(800, 800)];
        Wall *w25 = [[Wall alloc] initWithBegin:CGPointMake(430, 700) andEnd:CGPointMake(430, 800)];
        Wall *w26 = [[Wall alloc] initWithBegin:CGPointMake(550, 700) andEnd:CGPointMake(700, 700)];
        Wall *w27 = [[Wall alloc] initWithBegin:CGPointMake(700, 700) andEnd:CGPointMake(700, 600)];
        Wall *w28 = [[Wall alloc] initWithBegin:CGPointMake(650, 900) andEnd:CGPointMake(650, 1050)];
        Wall *w29 = [[Wall alloc] initWithBegin:CGPointMake(550, 800) andEnd:CGPointMake(550, 950)];
        Wall *w30 = [[Wall alloc] initWithBegin:CGPointMake(300, 950) andEnd:CGPointMake(550, 950)];
        Wall *w31 = [[Wall alloc] initWithBegin:CGPointMake(300, 875) andEnd:CGPointMake(550, 875)];
        
        
        NSArray *maze1 = @[w1,w2,w3,w4, w5, w6, w7, w8, w9, w10,
                           w11, w12, w13, w14, w15, w16, w17,
                           w18, w19, w20, w21, w22, w23, w24,
                           w25, w26, w27, w28, w29, w30, w31];
        
        Wall *ww1 = [[Wall alloc] initWithBegin:CGPointMake(171.000000, 0) andEnd: CGPointMake(249.000000, 208.000000)];
        Wall *ww2 = [[Wall alloc] initWithBegin:CGPointMake(0, 260.000000) andEnd: CGPointMake(178.000000, 302.000000)];
        Wall *ww3 = [[Wall alloc] initWithBegin:CGPointMake(178.000000, 302.000000) andEnd: CGPointMake(94.000000, 353.000000)];
        Wall *ww4 = [[Wall alloc] initWithBegin:CGPointMake(344.000000, 100.000000) andEnd: CGPointMake(405.000000, 335.000000)];
        Wall *ww5 = [[Wall alloc] initWithBegin:CGPointMake(405.000000, 335.000000) andEnd: CGPointMake(210.000000, 490.000000)];
        Wall *ww6 = [[Wall alloc] initWithBegin:CGPointMake(5.000000, 489.000000) andEnd: CGPointMake(114.000000, 461.000000)];
        Wall *ww7 = [[Wall alloc] initWithBegin:CGPointMake(114.000000, 461.000000) andEnd: CGPointMake(124.000000, 834.000000)];
        Wall *ww8 = [[Wall alloc] initWithBegin:CGPointMake(111.000000, 937.000000) andEnd: CGPointMake(0, 973.000000)];
        Wall *ww9 = [[Wall alloc] initWithBegin:CGPointMake(111.000000, 937.000000) andEnd: CGPointMake(353.000000, 921.000000)];
        Wall *ww10 = [[Wall alloc] initWithBegin:CGPointMake(353.000000, 921.000000) andEnd: CGPointMake(310.000000, 704.000000)];
        Wall *ww11 = [[Wall alloc] initWithBegin:CGPointMake(348.000000, 100.000000) andEnd: CGPointMake(536.000000, 137.000000)];
        Wall *ww12 = [[Wall alloc] initWithBegin:CGPointMake(563.000000, 47.000000) andEnd: CGPointMake(497.000000, 263.000000)];
        Wall *ww13 = [[Wall alloc] initWithBegin:CGPointMake(650.000000, 157.000000) andEnd: CGPointMake(700.000000, 0)];
        Wall *ww14 = [[Wall alloc] initWithBegin:CGPointMake(580.000000, 205.000000) andEnd: CGPointMake(655.000000, 306.000000)];
        Wall *ww15 = [[Wall alloc] initWithBegin:CGPointMake(655.000000, 306.000000) andEnd: CGPointMake(767.000000, 231.000000)];
        Wall *ww16 = [[Wall alloc] initWithBegin:CGPointMake(269.000000, 458.000000) andEnd: CGPointMake(497.000000, 610.000000)];
        Wall *ww17 = [[Wall alloc] initWithBegin:CGPointMake(497.000000, 610.000000) andEnd: CGPointMake(496.000000, 935.000000)];
        Wall *ww18 = [[Wall alloc] initWithBegin:CGPointMake(215.000000, 807.000000) andEnd: CGPointMake(203.000000, 609.000000)];
        Wall *ww19 = [[Wall alloc] initWithBegin:CGPointMake(203.000000, 609.000000) andEnd: CGPointMake(637.000000, 718.000000)];
        Wall *ww20 = [[Wall alloc] initWithBegin:CGPointMake(126.000000, 187.000000) andEnd: CGPointMake(0, 126.000000)];
        Wall *ww21 = [[Wall alloc] initWithBegin:CGPointMake(683.000000, 943.000000) andEnd: CGPointMake(767.000000, 918.000000)];
        Wall *ww22 = [[Wall alloc] initWithBegin:CGPointMake(325.000000, 490.000000) andEnd: CGPointMake(552.000000, 374.000000)];
        Wall *ww23 = [[Wall alloc] initWithBegin:CGPointMake(522.000000, 505.000000) andEnd: CGPointMake(677.000000, 409.000000)];
        Wall *ww24 = [[Wall alloc] initWithBegin:CGPointMake(677.000000, 409.000000) andEnd: CGPointMake(678.000000, 484.000000)];
        Wall *ww25 = [[Wall alloc] initWithBegin:CGPointMake(524.000000, 509.000000) andEnd: CGPointMake(688.000000, 572.000000)];
        Wall *ww26 = [[Wall alloc] initWithBegin:CGPointMake(688.000000, 572.000000) andEnd: CGPointMake(687.000000, 612.000000)];
        Wall *ww27 = [[Wall alloc] initWithBegin:CGPointMake(629.000000, 623.000000) andEnd: CGPointMake(767.000000, 636.000000)];
        Wall *ww28 = [[Wall alloc] initWithBegin:CGPointMake(639.000000, 727.000000) andEnd: CGPointMake(566.000000, 1023.000000)];
        Wall *ww29 = [[Wall alloc] initWithBegin:CGPointMake(560.000000, 797.000000) andEnd: CGPointMake(697.000000, 813.000000)];
        Wall *ww30 = [[Wall alloc] initWithBegin:CGPointMake(311.000000, 408.000000) andEnd: CGPointMake(285.000000, 314.000000)];

        
        NSArray *maze2 = @[ww1,ww2,ww3,ww4,ww5,
                           ww6,ww7,ww8,ww9,ww10,
                           ww11,ww12,ww13,ww14,ww15,
                           ww16,ww17,ww18,ww19,ww20,
                           ww21,ww22,ww23,ww24,ww25,
                           ww26,ww27,ww28,ww29,ww30];
        
        
        Wall *a = [[Wall alloc] initWithBegin:CGPointMake(690.000000, 250.000000) andEnd: CGPointMake(1.000000, 250.000000)];
        Wall *b = [[Wall alloc] initWithBegin:CGPointMake(71.000000, 317.000000) andEnd: CGPointMake(767.000000, 317.000000)];
        Wall *c = [[Wall alloc] initWithBegin:CGPointMake(690.000000, 380.000000) andEnd: CGPointMake(1.000000, 380.000000)];
        Wall *d = [[Wall alloc] initWithBegin:CGPointMake(90.000000, 450.000000) andEnd: CGPointMake(767.000000, 450.000000)];
        Wall *e = [[Wall alloc] initWithBegin:CGPointMake(690.000000, 580.000000) andEnd: CGPointMake(1.000000, 580.000000)];
        Wall *f = [[Wall alloc] initWithBegin:CGPointMake(91.000000, 450.000000) andEnd: CGPointMake(90.000000, 518.000000)];
        Wall *g = [[Wall alloc] initWithBegin:CGPointMake(182.000000, 507.000000) andEnd: CGPointMake(183.000000, 580.000000)];
        Wall *h = [[Wall alloc] initWithBegin:CGPointMake(270.000000, 458.000000) andEnd: CGPointMake(270.000000, 518.000000)];
        Wall *i = [[Wall alloc] initWithBegin:CGPointMake(359.000000, 507.000000) andEnd: CGPointMake(360.000000, 580.000000)];
        Wall *j = [[Wall alloc] initWithBegin:CGPointMake(450.000000, 463.000000) andEnd: CGPointMake(450.000000, 524.000000)];
        Wall *k = [[Wall alloc] initWithBegin:CGPointMake(545.000000, 512.000000) andEnd: CGPointMake(545.000000, 580.000000)];
        Wall *l = [[Wall alloc] initWithBegin:CGPointMake(630.000000, 462.000000) andEnd: CGPointMake(630.000000, 523.000000)];
        Wall *m = [[Wall alloc] initWithBegin:CGPointMake(690.000000, 580.000000) andEnd: CGPointMake(717.000000, 528.000000)];
        Wall *n = [[Wall alloc] initWithBegin:CGPointMake(78.000000, 654.000000) andEnd: CGPointMake(767.000000, 651.000000)];
        Wall *o = [[Wall alloc] initWithBegin:CGPointMake(699.000000, 732.000000) andEnd: CGPointMake(0, 732.000000)];

        
        NSArray *maze3 = @[a,b,c,d,e,f,g,h,i,j,k,l,m,n,o];
        
        _mazes = @[maze0, maze1, maze2, maze3];
    }
    return self;
}

+ (MazeStore *) sharedStore{
    static MazeStore *sharedStore = nil;
    if (!sharedStore){
        sharedStore = [[super allocWithZone:nil]init];
    }
    return sharedStore;
}


@end
