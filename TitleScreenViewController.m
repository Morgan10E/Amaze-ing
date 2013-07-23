//
//  TitleScreenViewController.m
//  Amaze-ing
//
//  Created by Matt Grossman on 7/23/13.
//  Copyright (c) 2013 Morgan Tenney. All rights reserved.
//

#import "TitleScreenViewController.h"
#import "MazeViewController.h"
#import "TouchViewController.h"
@interface TitleScreenViewController ()

@end

@implementation TitleScreenViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)didClickPlayButton:(id)sender {
    MazeViewController *mazeViewController = [[MazeViewController alloc] initWithNibName:@"MazeViewController" bundle:nil];
    [[self navigationController] pushViewController:mazeViewController animated:YES];
}

- (IBAction)didClickCreateButton:(id)sender {
    TouchViewController *tvc = [[TouchViewController alloc] initWithNibName:@"TouchViewController" bundle:nil];
    [[self navigationController] pushViewController:tvc animated:YES];
}
@end
