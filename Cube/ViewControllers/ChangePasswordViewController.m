//
//  ChangePasswordViewController.m
//  Cube
//
//  Created by mac on 11/08/16.
//  Copyright © 2016 Xanadutec. All rights reserved.
//

#import "ChangePasswordViewController.h"

@interface ChangePasswordViewController ()

@end

@implementation ChangePasswordViewController
@synthesize pinCode1TextField,pinCode2TextField,pinCode3TextField,pinCode4TextField,navigationBarView,pinCode5TextField,pinCode6TextField,pinCode7TextField,pinCode8TextField,submitButton;

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
//- (UIStatusBarStyle)preferredStatusBarStyle
//{
//    return UIStatusBarStyleLightContent;
//}

-(void)viewWillAppear:(BOOL)animated
{
    //[[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent animated:YES];
    //[self setNeedsStatusBarAppearanceUpdate];

    navigationBarView.backgroundColor=[UIColor colorWithRed:247/255.0 green:247/255.0 blue:247/255.0 alpha:1];
    [pinCode1TextField becomeFirstResponder];
    pinCode1TextField.delegate=self;
    pinCode2TextField.delegate=self;
    pinCode3TextField.delegate=self;
    pinCode4TextField.delegate=self;
    
    pinCode5TextField.delegate=self;
    pinCode6TextField.delegate=self;
    pinCode7TextField.delegate=self;
    pinCode8TextField.delegate=self;
    
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
    
    pinCode5TextField.layer.cornerRadius=4.0f;
    pinCode5TextField.layer.masksToBounds=YES;
    pinCode5TextField.layer.borderColor=[[UIColor grayColor]CGColor];
    pinCode5TextField.layer.borderWidth= 1.0f;
    
    pinCode6TextField.layer.cornerRadius=4.0f;
    pinCode6TextField.layer.masksToBounds=YES;
    pinCode6TextField.layer.borderColor=[[UIColor grayColor]CGColor];
    pinCode6TextField.layer.borderWidth= 1.0f;
    
    pinCode7TextField.layer.cornerRadius=4.0f;
    pinCode7TextField.layer.masksToBounds=YES;
    pinCode7TextField.layer.borderColor=[[UIColor grayColor]CGColor];
    pinCode7TextField.layer.borderWidth= 1.0f;
    
    pinCode8TextField.layer.cornerRadius=4.0f;
    pinCode8TextField.layer.masksToBounds=YES;
    pinCode8TextField.layer.borderColor=[[UIColor grayColor]CGColor];
    pinCode8TextField.layer.borderWidth= 1.0f;
    
    submitButton.layer.cornerRadius=4.0f;
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
    if (sender ==pinCode1TextField ||sender ==pinCode2TextField ||sender ==pinCode3TextField ||sender ==pinCode4TextField )
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
    
    if (sender ==pinCode5TextField ||sender ==pinCode6TextField ||sender ==pinCode7TextField ||sender ==pinCode8TextField )
    {
        
        if (sender==pinCode5TextField)
        {
            [pinCode6TextField becomeFirstResponder];
            
        }
        if (sender==pinCode6TextField)
        {
            [pinCode7TextField becomeFirstResponder];
            
        }
        if (sender==pinCode7TextField)
        {
            [pinCode8TextField becomeFirstResponder];
            
        }
    }

}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)backButtonClicked:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
