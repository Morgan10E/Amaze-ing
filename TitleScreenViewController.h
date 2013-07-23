//
//  TitleScreenViewController.h
//  Amaze-ing
//
//  Created by Matt Grossman on 7/23/13.
//  Copyright (c) 2013 Morgan Tenney. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TitleScreenViewController : UIViewController
@property (unsafe_unretained, nonatomic) IBOutlet UIButton *playButton;
@property (unsafe_unretained, nonatomic) IBOutlet UIButton *createButton;
- (IBAction)didClickPlayButton:(id)sender;
- (IBAction)didClickCreateButton:(id)sender;

@end
