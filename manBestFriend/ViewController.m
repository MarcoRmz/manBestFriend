//
//  ViewController.m
//  manBestFriend
//
//  Created by Marco Ramirez on 1/9/15.
//  Copyright (c) 2015 Marco Ramirez. All rights reserved.
//

#import "ViewController.h"
#import "Dog.h"
#import "Puppy.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.currentIndex = 0;
    
    Dog *wisky = [[Dog alloc] init];
    wisky.name = @"Wisky";
    wisky.breed = @"Jack Russell";
    wisky.age = 4;
    wisky.image = [UIImage imageNamed:@"Tiger.png"];
    
    self.myImageView.image = wisky.image;
    self.nameLabel.text = wisky.name;
    self.breadLabel.text = wisky.breed;
    
    Dog *secondDog = [[Dog alloc] init];
    secondDog.name = @"Cooper";
    secondDog.breed = @"Alaskan Klee Klai";
    secondDog.image = [UIImage imageNamed:@"Circle.png"];
    
    Dog *thirdDog = [[Dog alloc] init];
    thirdDog.name = @"Spike";
    thirdDog.breed = @"Shnauzer";
    thirdDog.image = [UIImage imageNamed:@"SanFran.png"];
    
    Dog *fourthDog = [[Dog alloc] init];
    fourthDog.name = @"Dobby";
    fourthDog.breed = @"Border Collie";
    fourthDog.image = [UIImage imageNamed:@"Tigres.png"];
    
    self.myDogs = [[NSMutableArray alloc] init];
    [self.myDogs addObject:wisky];
    [self.myDogs addObject:secondDog];
    [self.myDogs addObject:thirdDog];
    [self.myDogs addObject:fourthDog];
    
    Puppy *littlePuppy = [[Puppy alloc] init];
    [littlePuppy bark];
    littlePuppy.name = @"Boo";
    littlePuppy.breed = @"Chihuaha";
    littlePuppy.image = [UIImage imageNamed:@"Street.jpg"];
    
    [self.myDogs addObject:littlePuppy];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)helloWorld{
    NSLog(@"Hello Wrold");
}

- (IBAction)newDogBarButtonItemPressed:(UIBarButtonItem *)sender {
    int numberOfDogs = [self.myDogs count];
    int randomIndex = arc4random() % numberOfDogs;
    Dog *randomDog = [self.myDogs objectAtIndex:randomIndex];
    
    if (self.currentIndex == randomIndex && self.currentIndex == 0) {
        randomIndex++;
    } else if (self.currentIndex == randomIndex) {
        randomIndex--;
    }
    
    self.currentIndex = randomIndex;
    
//    self.myImageView.image = randomDog.image;
//    self.breadLabel.text = randomDog.breed;
//    self.nameLabel.text = randomDog.name;
    
    [UIView transitionWithView:self.view duration:1 options:UIViewAnimationOptionTransitionCrossDissolve animations:^{
        self.myImageView.image = randomDog.image;
        self.breadLabel.text = randomDog.breed;
        self.nameLabel.text = randomDog.name;
    } completion:^(BOOL finished) {
        
    }];
    sender.title = @"And Another";
}
@end
