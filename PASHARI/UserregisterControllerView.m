//
//  UserregisterControllerView.m
//  
//
//  Created by 二宮啓 on 2015/06/13.
//
//

#import "UserregisterControllerView.h"

@implementation UserregisterControllerView
- (void)viewDidLoad {
//    [Username addTarget:self action:@selector(username:)forControlEvents:UIControlEventEditingDidEndOnExit];
//    [Password addTarget:self action:@selector(password:)forControlEvents:UIControlEventEditingDidEndOnExit];
//    [Emailaddress addTarget:self action:@selector(emailaddress:)forControlEvents:UIControlEventEditingDidEndOnExit];
    Username.delegate=self;
    Password.delegate=self;
    Emailaddress.delegate=self;
    Username.placeholder = @"Username";
    Password.placeholder = @"PASSWORD";
    Emailaddress.placeholder = @"EmailAddress";
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
-(IBAction)registback{
    [self dismissViewControllerAnimated:YES completion:nil];
}
-(IBAction)regist{
    
//    NSMutableString *usernametext = [Username.text mutableCopy];
//    NSMutableString *passwordtext = [Password.text mutableCopy];
//    NSMutableString *emailaddresstext = [Emailaddress.text mutableCopy];
    PFUser *user = [PFUser user];
    user.username = Username.text;
    user.password = Password.text;
    user.email = Emailaddress.text;
   
    
    [user signUpInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
        if (!error) {
            // Hooray! Let them use the app now.
        } else {
            NSString *errorString = [error userInfo][@"error"];
            // Show the errorString somewhere and let the user try again.
        }
    }];

}
-(BOOL)textFieldShouldReturn:(UITextField*)textField{
    [self.view endEditing:YES];
    //    [Username resignFirstResponder];
    //    [Password resignFirstResponder];
    //    [Emailaddress resignFirstResponder];
    return YES;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
