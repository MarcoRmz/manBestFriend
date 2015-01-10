//
//  Dog.m
//  manBestFriend
//
//  Created by Marco Ramirez on 1/9/15.
//  Copyright (c) 2015 Marco Ramirez. All rights reserved.
//

#import "Dog.h"

@implementation Dog

-(void)bark{
    NSLog(@"Woof Woof!");
}

-(void)barkANumberOfTimes:(int)number {
    for (int bark = 1; bark <= number; bark++) {
        [self bark];
    }
}

-(void)changeBreedToWerewolf{
    self.breed = @"Werewolf";
}

@end
