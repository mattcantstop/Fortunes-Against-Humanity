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
                        @"Why not? You would die anyway, am I right?",
                        @"Probably, but it likely would happen anyway.",
                        @"Please repeat the question with both hands raised in the air so I can hear you better. Reception is bad today.",
                        @"No, absolutely not. You should be ashamed of yourself for asking.",
                        @"Think through that question and ask again. Tighten up your game!",
                        @"Of course you'd ask that question. You get so freaky sometimes!",
                        @"That's what she said. Seriously, just yesterday she said it!",
                        @"Your mom asked me that question once. It got weird.",
                        @"Enough with the questions are you going to have my baby or not?",
                        @"You never talk to me just to talk. You're always trying to get information out of me!",
                        @"Let me answer your question with a question: What are you wearing?",
                        @"Stop shouting! Ask again later. I'm simply too hungover.",
                        @"Why do you want to know? So many questions! Are you writing a book?",
                        @"My dog seems to think so",
                        @"I know, but I'm not telling!",
                        @"What's in it for me?",
                        @"Nice try, but no.",
                        @"That was a really good question! Now give the phone back to mommy.",
                        @"Yes! But only if you turn yourself and the phone upside down and ask again.",
                        @"I hope nobody else is effected by this decision you are consulting with an 8 ball for.",
                        @"The answer is 42",
                        @"Wow, that was a good question. I wish I had an answer for ya.",
                        @"Yes, but don't tell anyone you heard that from me.",
                        @"He's just not that into you.",
                        @"WINE.",
                        @"Pregnant.",
                        @"Not pregnant.",
                        @"You should probably stop drinking now.",
                        @"If you have to ask, you already know the answer.",
                        @"You're the one talking to an eight ball!",
                        @"Chocolate!",
                        @"Hold on, let me consult a fortune cookie.",
                        @"Definitely...maybe.",
                        nil];
    }
    return _predictions;
}

- (NSString*) randomPrediction {
    int randomNumber = arc4random_uniform((int)self.predictions.count);
    return [self.predictions objectAtIndex:randomNumber];
}

@end
