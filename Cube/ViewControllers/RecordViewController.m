//
//  RecordViewController.m
//  Cube
//
//  Created by mac on 27/07/16.
//  Copyright © 2016 Xanadutec. All rights reserved.
//

#import "RecordViewController.h"

@interface RecordViewController ()

@end

@implementation RecordViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)viewWillAppear:(BOOL)animated
{
 self.tabBarController.navigationItem.title=@"Record";
   UILabel* fileNameLabel= [self.view viewWithTag:101];
    fileNameLabel.text=@"Filename";
    UILabel* transferredByLabel= [self.view viewWithTag:102];
    transferredByLabel.text=@"abc";
    UILabel* dateLabel= [self.view viewWithTag:103];
    dateLabel.text=@"date";

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
