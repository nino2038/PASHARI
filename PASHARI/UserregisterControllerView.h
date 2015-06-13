//
//  UserregisterControllerView.h
//  
//
//  Created by 二宮啓 on 2015/06/13.
//
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>

@interface UserregisterControllerView : UIViewController{
    IBOutlet UITextField *Username;
    IBOutlet UITextField *Password;
    IBOutlet UITextField *Emailaddress;
    
}
-(IBAction)regist;
-(IBAction)registback;
@end
