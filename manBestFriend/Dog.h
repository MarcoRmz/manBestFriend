//
//  Dog.h
//  manBestFriend
//
//  Created by Marco Ramirez on 1/9/15.
//  Copyright (c) 2015 Marco Ramirez. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dog : NSObject

@property (nonatomic) int age;
@property (nonatomic, strong) NSString *breed;
@property (nonatomic, strong) NSString *name;

-(void)bark;
-(void)barkANumberOfTimes:(int)number;
-(void)changeBreedToWerewolf;
-(void)barkANumberOfTimes:(int)number loudly:(BOOL)isLoud;
-(int)dogYears:(int)age;

@end
