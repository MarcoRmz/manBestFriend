//
//  Puppy.m
//  manBestFriend
//
//  Created by Marco Ramirez on 6/22/15.
//  Copyright (c) 2015 Marco Ramirez. All rights reserved.
//

#import "Puppy.h"

@implementation Puppy

-(void)givePuppyEyes {
    NSLog(@":(");
}

-(void)bark {
    [super bark];
    NSLog(@"whimper whimper");
    [self givePuppyEyes];
}

@end
