//
//  WelcomeViewController.m
//  PASHARI
//
//  Created by 二宮啓 on 2015/06/13.
//  Copyright (c) 2015年 SatoshiNinomiya. All rights reserved.
//

#import "WelcomeViewController.h"

@implementation WelcomeViewController
-(void)viewDidLoad{
    [super viewDidLoad];
}
-(void)viewDidAppear:(BOOL)animated{
    PFUser *currentUser = [PFUser currentUser];
    if (currentUser) {
        [self performSegueWithIdentifier:@"toDetailView" sender:self];
    } else {
        [self performSegueWithIdentifier:@"toFirstView" sender:self];
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
