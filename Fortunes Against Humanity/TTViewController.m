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
    self.predictions = [[NSArray alloc] initWithObjects: @"Certainly Great Times Will Be Had By All",
                                                         @"All Involved Will Probably Die!",
                                                         @"Forget That, You'll See A Unicorn Today!",
                                                         @"Yes, and With Lots of Passion!",
                                                         @"Why Not, You Would Die Anyway, Right?",
                                                         @"Probably, But It Likely Would Happen Anyway",
                                                         Nil
                                                         ];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed {
    int randomNumber = arc4random_uniform((int)self.predictions.count);
    self.predictionLabel.text = [self.predictions objectAtIndex:randomNumber];
}


@end
