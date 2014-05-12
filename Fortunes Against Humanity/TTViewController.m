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

#pragma mark - Prediction

- (void) makePrediction {
    self.predictionLabel.text = [self.fortunes randomPrediction];
    [UIView animateWithDuration:1.0f animations:^{
        self.predictionLabel.alpha = 1.0f;
    }];
}

#pragma mark - Motion Events

- (void) motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event  {
    self.predictionLabel.text = nil;
    self.predictionLabel.alpha = 0.0f;
}

- (void) motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    if (motion == UIEventSubtypeMotionShake) {
        [self makePrediction];
    }
}

- (void) motionCancelled:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    NSLog(@"Motion was cancelled");
}

#pragma mark - Touch Events

- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event   {
    self.predictionLabel.text = nil;
    self.predictionLabel.alpha = 0.0f;
}

- (void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
        [self makePrediction];
}

- (void) touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event {
    NSLog(@"Touch Ended");
}
@end
