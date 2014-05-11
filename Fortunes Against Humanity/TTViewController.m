//
//  TTViewController.m
//  Fortunes Against Humanity
//
//  Created by Duff on 5/5/14.
//  Copyright (c) 2014 tiniestTime. All rights reserved.
//

#import "TTViewController.h"
#import "TTFortunesAgainstHumanity.h"

@interface TTViewController ()
@property (weak, nonatomic) IBOutlet UILabel *Label;

@end

@implementation TTViewController

- (void)viewDidLoad
{
    self.fortunes = [[TTFortunesAgainstHumanity alloc] init];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed {
    self.predictionLabel.text = [self.fortunes randomPrediction];
}

- (void) motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    if (motion == UIEventSubtypeMotionShake) {
        self.predictionLabel.text = [self.fortunes randomPrediction];
    }
}

- (void) motionCancelled:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    NSLog(@"Motion was cancelled");
}

@end
