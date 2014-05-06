//
//  TTFortunesAgainstHumanity.h
//  Fortunes Against Humanity
//
//  Created by Duff on 5/6/14.
//  Copyright (c) 2014 tiniestTime. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TTFortunesAgainstHumanity : NSObject {
    NSArray *_predictions;
}

@property (strong, nonatomic, readonly) NSArray *predictions;

- (NSString*) randomPrediction;

@end
