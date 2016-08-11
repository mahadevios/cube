//http://www.appcoda.com/customize-navigation-status-bar-ios-7/

//pixel to point conversion: http://endmemo.com/sconvert/pixelpoint.php
//  ViewController.m
//  Cube
//
//  Created by mac on 26/07/16.
//  Copyright © 2016 Xanadutec. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController
@synthesize pinCode1TextField,pinCode2TextField,pinCode3TextField,pinCode4TextField;
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


-(void)viewWillAppear:(BOOL)animated
{

    //self.navigationItem.title=@"Pin Login";
    //[self.navigationController.navigationBar setTitleTextAttributes:
     //@{NSForegroundColorAttributeName:[UIColor orangeColor]}];
     // self.navigationController.navigationBar.barTintColor = [UIColor whiteColor];
    //[self.navigationController.navigationBar setBarStyle:UIStatusBarStyleLightContent];// to set carrier,time and battery color in white color
//    NSDictionary *size = [NSDictionary dictionaryWithObjectsAndKeys:[UIFont fontWithName:@"Arial-Bold" size:30.0],NSFontAttributeName, nil];
//    
//    self.navigationController.navigationBar.titleTextAttributes = size;
    //    [[UINavigationBar appearance] setTitleTextAttributes:@{NSFontAttributeName:[UIFont fontWithName:@"System-Bold" size:20]}];
//    
    //@{NSForegroundColorAttributeName:[UIColor orangeColor]}
    [pinCode1TextField becomeFirstResponder];
    pinCode1TextField.delegate=self;
    pinCode2TextField.delegate=self;
    pinCode3TextField.delegate=self;
    pinCode4TextField.delegate=self;

    pinCode1TextField.layer.cornerRadius=4.0f;
    pinCode1TextField.layer.masksToBounds=YES;
    pinCode1TextField.layer.borderColor=[[UIColor grayColor]CGColor];
    pinCode1TextField.layer.borderWidth= 1.0f;

    pinCode2TextField.layer.cornerRadius=4.0f;
    pinCode2TextField.layer.masksToBounds=YES;
    pinCode2TextField.layer.borderColor=[[UIColor grayColor]CGColor];
    pinCode2TextField.layer.borderWidth= 1.0f;
    
    pinCode3TextField.layer.cornerRadius=4.0f;
    pinCode3TextField.layer.masksToBounds=YES;
    pinCode3TextField.layer.borderColor=[[UIColor grayColor]CGColor];
    pinCode3TextField.layer.borderWidth= 1.0f;
    
    pinCode4TextField.layer.cornerRadius=4.0f;
    pinCode4TextField.layer.masksToBounds=YES;
    pinCode4TextField.layer.borderColor=[[UIColor grayColor]CGColor];
    pinCode4TextField.layer.borderWidth= 1.0f;

}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    // Prevent crashing undo bug – see note below.
    if(range.length + range.location > textField.text.length)
    {
        return NO;
    }
    NSUInteger newLength = [textField.text length] + [string length] - range.length;
    
    if (newLength==1)
    {
        [self performSelector:@selector(resignResponder:) withObject:textField afterDelay:0.0];
    }
    return newLength <= 1;
}

-(void)resignResponder:(id)sender
{
    if (sender==pinCode1TextField)
    {
        [pinCode2TextField becomeFirstResponder];

    }
    if (sender==pinCode2TextField)
    {
        [pinCode3TextField becomeFirstResponder];
        
    }
    if (sender==pinCode3TextField)
    {
        [pinCode4TextField becomeFirstResponder];
        
    }
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)submitButtonCilcked:(id)sender
{
    
  //  [self.navigationController pushViewController:[self.storyboard instantiateViewControllerWithIdentifier:@"SelectDepartmentViewController"] animated:YES];
    [self dismissViewControllerAnimated:YES completion:^(){
        [[[[[UIApplication sharedApplication]delegate] window] rootViewController] presentViewController:[self.storyboard instantiateViewControllerWithIdentifier:@"SelectDepartmentViewController"] animated:YES completion:nil] ;   }];
//    [[[[[UIApplication sharedApplication]delegate] window] rootViewController] presentViewController:[self.storyboard instantiateViewControllerWithIdentifier:@"SelectDepartmentViewController"] animated:YES completion:nil];
    
}

- (IBAction)cancelButtonClicked:(id)sender
{
    
}
@end
