//
//  InCompleteDictationViewController.m
//  Cube
//
//  Created by mac on 04/08/16.
//  Copyright © 2016 Xanadutec. All rights reserved.
//

#import "InCompleteDictationViewController.h"

@interface InCompleteDictationViewController ()

@end

@implementation InCompleteDictationViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)viewWillAppear:(BOOL)animated
{
    self.navigationItem.leftBarButtonItem=[[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"Back"] style:UIBarButtonItemStylePlain target:self action:@selector(popViewController:)];
    
    self.navigationItem.title=@"Incomplete Dictation (s)";

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
    return 8;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableview cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    UITableViewCell *cell = [tableview dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    UILabel* fileNameLabel=[cell viewWithTag:101];
    UILabel* recordingDurationLabel=[cell viewWithTag:102];
    UILabel* nameLabel=[cell viewWithTag:103];
    UILabel* dateLabel=[cell viewWithTag:104];
    UILabel* timeLabel=[cell viewWithTag:105];

    
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    //MainTabBarViewController * vc = [self.storyboard instantiateViewControllerWithIdentifier:@"MainTabBarViewController"];
    
    [self.navigationController pushViewController:[self.storyboard instantiateViewControllerWithIdentifier:@"MainTabBarViewController"] animated:YES];
    
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
