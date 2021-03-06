//
//  ViewController.h
//  manBestFriend
//
//  Created by Marco Ramirez on 1/9/15.
//  Copyright (c) 2015 Marco Ramirez. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIImageView *myImageView;
@property (strong, nonatomic) IBOutlet UILabel *nameLabel;
@property (strong, nonatomic) IBOutlet UILabel *breadLabel;
@property (nonatomic, strong) NSMutableArray *myDogs;
@property (nonatomic) int currentIndex;

- (IBAction)newDogBarButtonItemPressed:(UIBarButtonItem *)sender;

@end
