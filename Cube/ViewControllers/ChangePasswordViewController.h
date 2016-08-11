//
//  ChangePasswordViewController.h
//  Cube
//
//  Created by mac on 11/08/16.
//  Copyright © 2016 Xanadutec. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ChangePasswordViewController : UIViewController<UITextFieldDelegate>
- (IBAction)backButtonClicked:(id)sender;

@property (weak, nonatomic) IBOutlet UITextField *pinCode1TextField;
@property (weak, nonatomic) IBOutlet UITextField *pinCode2TextField;
@property (weak, nonatomic) IBOutlet UITextField *pinCode3TextField;
@property (weak, nonatomic) IBOutlet UITextField *pinCode4TextField;
@property (weak, nonatomic) IBOutlet UIView *navigationBarView;

@property (weak, nonatomic) IBOutlet UITextField *pinCode5TextField;
@property (weak, nonatomic) IBOutlet UITextField *pinCode6TextField;
@property (weak, nonatomic) IBOutlet UITextField *pinCode7TextField;
@property (weak, nonatomic) IBOutlet UITextField *pinCode8TextField;

@property (weak, nonatomic) IBOutlet UIButton *submitButton;
@end
