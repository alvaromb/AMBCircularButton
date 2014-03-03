//
//  AMBTestTableViewController.m
//  AMBCircularButton
//
//  Created by amb on 28/02/14.
//  Copyright (c) 2014 AMB. All rights reserved.
//

#import "AMBTestTableViewController.h"

@interface AMBTestTableViewController()

@property (nonatomic, strong) AMBCircularButton *circularButton;

@end

@implementation AMBTestTableViewController

- (id)init
{
    self = [super init];
    if (self) {
        self.title = @"AMBCircularButton";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    AMBCircularButton *circularButton = [[AMBCircularButton alloc] init];
    [circularButton addTarget:self action:@selector(buttonPressed) forControlEvents:UIControlEventTouchUpInside];
    NSURL *url = [NSURL URLWithString:@"http://lh3.ggpht.com/_ERXQs5oLNgE/S01Ee_26lsI/AAAAAAAAAlY/1T0Dl4QJiYk/s800/lenaV.jpg"];
    [circularButton setCircularImageWithURL:url forState:UIControlStateNormal];
    circularButton.backgroundColor = [UIColor blueColor];
    self.circularButton = circularButton;
    [self.view addSubview:self.circularButton];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.circularButton.frame = CGRectMake(self.view.frame.size.width/2 - 75, 80, 150, 150);
}

- (void)buttonPressed
{
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Hooray!"
                                                        message:@"Button pressed"
                                                       delegate:nil
                                              cancelButtonTitle:nil
                                              otherButtonTitles:@"Love it", nil];
    [alertView show];
}

@end
