//
//  TTViewController.m
//  Fortunes Against Humanity
//
//  Created by Duff on 5/5/14.
//  Copyright (c) 2014 tiniestTime. All rights reserved.
//

#import "TTViewController.h"

@interface TTViewController ()
@property (weak, nonatomic) IBOutlet UILabel *Label;

@end

@implementation TTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	self.predictionLabel.frame = CGRectMake(50, 200, 100,100);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed {
    self.predictionLabel.text = @"Looks like death for all involved!";
}
@end
