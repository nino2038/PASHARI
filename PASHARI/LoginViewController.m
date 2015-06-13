//
//  LoginViewController.m
//  PASHARI
//
//  Created by 二宮啓 on 2015/06/13.
//  Copyright (c) 2015年 SatoshiNinomiya. All rights reserved.
//

#import "LoginViewController.h"
#import <Parse/Parse.h>


@implementation LoginViewController
-(BOOL)textFieldShouldReturn:(UITextField*)textField{
    [self.view endEditing:YES];
    //    [Username resignFirstResponder];
    //    [Password resignFirstResponder];
    //    [Emailaddress resignFirstResponder];
    return YES;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    LoginUsername.delegate=self;
    LoginPassword.delegate=self;
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)loginback{
    [self dismissViewControllerAnimated:YES completion:nil];
}
-(IBAction)login{
    UIAlertController *loginerror = [UIAlertController alertControllerWithTitle:@"" message:@"ユーザーネームもしくはパスワードが間違っています" preferredStyle:UIAlertControllerStyleAlert];
    [PFUser logInWithUsernameInBackground:LoginUsername.text password:LoginPassword.text
                                    block:^(PFUser *user, NSError *error) {
                                        if (user) {
                                            [self performSegueWithIdentifier:@"fromlogin" sender:self];
                                        } else {
                                            [loginerror addAction:[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
                                                LoginUsername.text=nil;
                                                LoginPassword.text=nil;
                                            }]];
                                            [self presentViewController:loginerror animated:YES completion:nil];
                                        }
                                    }];
}
@end
