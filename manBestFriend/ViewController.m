//
//  ViewController.m
//  manBestFriend
//
//  Created by Marco Ramirez on 1/9/15.
//  Copyright (c) 2015 Marco Ramirez. All rights reserved.
//

#import "ViewController.h"
#import "Dog.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    Dog *wisky = [[Dog alloc] init];
    wisky.name = @"Wisky";
    wisky.breed = @"Jack Russell";
    wisky.age = 4;
    
    NSLog(@"My dog's name is: %@ it's age is %i and he is a %@", wisky.name, wisky.age, wisky.breed);
    [wisky bark];
    [wisky barkANumberOfTimes:3];
    [wisky changeBreedToWerewolf];
    NSLog(@"Breed: %@", wisky.breed);
    [self printHelloWorld];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)helloWorld{
    NSLog(@"Hello Wrold");
}

@end
