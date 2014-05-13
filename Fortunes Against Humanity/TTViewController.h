//
//  TTViewController.h
//  Fortunes Against Humanity
//
//  Created by Duff on 5/5/14.
//  Copyright (c) 2014 tiniestTime. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <iAd/iAd.h>

@class TTFortunesAgainstHumanity;

@interface TTViewController : UIViewController <ADBannerViewDelegate>
@property (weak, nonatomic) IBOutlet UILabel *predictionLabel;
@property (strong,nonatomic) TTFortunesAgainstHumanity *fortunes;

- (void) makePrediction;

@end
