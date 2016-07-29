//
//  ViewController.h
//  Cube
//
//  Created by mac on 26/07/16.
//  Copyright © 2016 Xanadutec. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginViewController : UIViewController<UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *pinCode1TextField;
@property (weak, nonatomic) IBOutlet UITextField *pinCode2TextField;
@property (weak, nonatomic) IBOutlet UITextField *pinCode3TextField;
@property (weak, nonatomic) IBOutlet UITextField *pinCode4TextField;
- (IBAction)submitButtonCilcked:(id)sender;

@end

