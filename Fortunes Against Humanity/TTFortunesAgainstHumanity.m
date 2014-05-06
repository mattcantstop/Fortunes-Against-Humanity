//
//  TTFortunesAgainstHumanity.m
//  Fortunes Against Humanity
//
//  Created by Duff on 5/6/14.
//  Copyright (c) 2014 tiniestTime. All rights reserved.
//

#import "TTFortunesAgainstHumanity.h"

@implementation TTFortunesAgainstHumanity

- (NSArray *) predictions {
    if (_predictions == nil) {
        _predictions = [[NSArray alloc] initWithObjects: @"Certainly Great Times Will Be Had By All",
                                                         @"All Involved Will Probably Die!",
                                                         @"Forget That, You'll See A Unicorn Today!",
                                                         @"Yes, and With Lots of Passion!",
                                                         @"Why Not, You Would Die Anyway, Right?",
                                                         @"Probably, But It Likely Would Happen Anyway",
                                                         nil];
    }
    return _predictions;
}

- (NSString*) randomPrediction {
    int randomNumber = arc4random_uniform((int)self.predictions.count);
    return [self.predictions objectAtIndex:randomNumber];
}

@end
