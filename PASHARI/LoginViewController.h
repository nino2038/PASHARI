//
//  LoginViewController.h
//  PASHARI
//
//  Created by 二宮啓 on 2015/06/13.
//  Copyright (c) 2015年 SatoshiNinomiya. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginViewController : UIViewController{
    IBOutlet UITextField *LoginUsername;
    IBOutlet UITextField *LoginPassword;
}
-(IBAction)login;
-(IBAction)loginback;
@end
