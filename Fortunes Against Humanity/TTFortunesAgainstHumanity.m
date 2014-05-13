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
        _predictions = [[NSArray alloc] initWithObjects: @"Sorry I wasn't listening.",
                        @"Yes. Absolutely. Hold on, let me try that again with a straight face.",
                        @"Ask your lover...oooh, sorry. I forgot.",
                        @"*Blank stare*",
                        @"HAHAHAHAHA. No.",
                        @"I'll answer that in a minute, I'm on the toilet. Everyone poops!",
                        @"You're joking, right?",
                        @"Yes, but all involved will probably die!",
                        @"No, but you'll see a unicorn today!",
                        @"Why not, you would die anyway, right?",
                        @"Probably, but it likely would happen anyway.",
                        @"Please repeat the question with both hands raised in the air so I can hear you better. Reception is bad today.",
                        @"No, absolutely not. You should be ashamed of yourself for asking.",
                        @"Think through that question and ask again. Tighten up your game!",
                        @"Of course you'd ask that question, ya freak!",
                        @"That's what she said. Seriously, just yesterday she said it!",
                        @"Your mom asked me that question once. It got weird.",
                        @"Enough with the questions are you going to have my baby or not?",
                        @"You never talk to me just to talk. You always want something!",
                        @"Let me answer your question with a question: What are you wearing?",
                        @"Stop shouting! Ask again later. I'm simply too hungover.",
                        @"Why do you want to know? So many questions! Are you writing a book?",
                        @"My dog seems to think so",
                        @"I know, but I'm not telling",
                        @"What's in it for me?",
                        @"Nice try, but no.",
                        nil];
    }
    return _predictions;
}

- (NSString*) randomPrediction {
    int randomNumber = arc4random_uniform((int)self.predictions.count);
    return [self.predictions objectAtIndex:randomNumber];
}

@end
