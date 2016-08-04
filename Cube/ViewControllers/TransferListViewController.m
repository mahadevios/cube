//
//  TransferListViewController.m
//  Cube
//
//  Created by mac on 28/07/16.
//  Copyright © 2016 Xanadutec. All rights reserved.
//

#import "TransferListViewController.h"

@interface TransferListViewController ()

@end

@implementation TransferListViewController
@synthesize currentViewName;
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)viewWillAppear:(BOOL)animated
{
    NSLog(@"%@",self.currentViewName);
    self.navigationItem.title=self.currentViewName;
    self.navigationItem.leftBarButtonItem=[[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"Back"] style:UIBarButtonItemStylePlain target:self action:@selector(popViewController:)];
}
-(void)popViewController:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 3;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableview cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    UITableViewCell *cell = [tableview dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    UILabel* departmentNameLabel=[cell viewWithTag:101];
    departmentNameLabel.text=[NSString stringWithFormat:@"MOB-147022459627%ld",indexPath.row+1];
    
    UILabel* timeLabel=[cell viewWithTag:102];
    timeLabel.text=[NSString stringWithFormat:@"12:45:34"];
    
    UILabel* nameLabel=[cell viewWithTag:103];
    nameLabel.text=[NSString stringWithFormat:@"Sanjay Ubale"];

    UILabel* dateLabel=[cell viewWithTag:104];
    dateLabel.text=[NSString stringWithFormat:@"03/08/2016"];

    
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    //MainTabBarViewController * vc = [self.storyboard instantiateViewControllerWithIdentifier:@"MainTabBarViewController"];
    
    [self.navigationController presentViewController:[self.storyboard instantiateViewControllerWithIdentifier:@"Navigation"] animated:YES completion:nil];
    NSLog(@"%@",self.navigationController);
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
