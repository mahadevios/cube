//
//  HomeViewController.m
//  Cube
//
//  Created by mac on 27/07/16.
//  Copyright © 2016 Xanadutec. All rights reserved.
//

#import "HomeViewController.h"
#import "TransferListViewController.h"
@interface HomeViewController ()

@end

@implementation HomeViewController
@synthesize transferredView,transferFailedView,awaitingTransferView;
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
-(void)viewWillAppear:(BOOL)animated
{
   
       // [self presentViewController:[self.storyboard instantiateViewControllerWithIdentifier:@"LoginViewController"] animated:YES completion:nil];
    
    NSLog(@"%@",self.navigationController);
    self.navigationItem.rightBarButtonItem=[[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"More"] style:UIBarButtonItemStylePlain target:self action:@selector(showUserSettings:)];
    transferFailedView.layer.cornerRadius=4.0f;
    transferredView.layer.cornerRadius=4.0f;
    awaitingTransferView.layer.cornerRadius=4.0f;
    
    tapRecogniser=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(showList:)];
    tapRecogniser1=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(showList:)];
    tapRecogniser2=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(showList:)];
    [transferredView addGestureRecognizer:tapRecogniser];
    [awaitingTransferView addGestureRecognizer:tapRecogniser1];
    [transferFailedView addGestureRecognizer:tapRecogniser2];

}

-(void)showUserSettings:(id)sender
{
    [self.navigationController presentViewController:[self.storyboard  instantiateViewControllerWithIdentifier:@"UserSettingsNavigationController"] animated:YES completion:nil];
   // [self.navigationController pushViewController:[self.storyboard  instantiateViewControllerWithIdentifier:@"UserSettingsViewController"] animated:YES];
}

-(void)showList:(UITapGestureRecognizer*)sender
{
    TransferListViewController* vc=[self.storyboard instantiateViewControllerWithIdentifier:@"TransferListViewController"];
    if (sender==tapRecogniser)
    {
        vc.currentViewName=@"Today's Transferred";
    }
    if (sender==tapRecogniser1)
    {
        vc.currentViewName=@"Awaiting Transfer";
    }
    if (sender==tapRecogniser2)
    {
        vc.currentViewName=@"Transfer failed";
    }
    [self.navigationController pushViewController:vc animated:YES];

    NSLog(@"%@",self.tabBarController);

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

@end
