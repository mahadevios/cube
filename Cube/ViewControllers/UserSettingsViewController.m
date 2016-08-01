//
//  UserSettingsViewController.m
//  Cube
//
//  Created by mac on 29/07/16.
//  Copyright © 2016 Xanadutec. All rights reserved.
//

#import "UserSettingsViewController.h"
#import "SwitchCreation.h"
@interface UserSettingsViewController ()

@end

@implementation UserSettingsViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    recordSettingsItemsarray=[[NSMutableArray alloc]initWithObjects:@"Save Dictation Waiting by",@"Confirm before saving",@"Alert before recording",@"Back to home after dictation",@"Record abbreviation", nil];
    storageManagementItemsArray=[[NSMutableArray alloc]initWithObjects:@"Low Storage Threshold",@"Purge Deleted Data", nil];
    PlaybackAutoRewindByArray=[[NSMutableArray alloc]initWithObjects:@"Change your password", nil];
    // Do any additional setup after loading the view.
}

-(void)viewWillAppear:(BOOL)animated
{
    NSLog(@"%@",self.navigationController);
 self.navigationItem.title=@"User Settings";
    self.navigationItem.leftBarButtonItem=[[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"Back"] style:UIBarButtonItemStylePlain target:self action:@selector(popViewController:)];
}
-(void)popViewController:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 3;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UIView* sectionHeaderView=[[UIView alloc]initWithFrame:CGRectMake(tableView.frame.origin.x, tableView.frame.origin.y, tableView.frame.size.width, 60)];
    sectionHeaderView.backgroundColor=[UIColor colorWithRed:239/255.0 green:239/255.0 blue:244/255.0 alpha:1];
    
    UILabel* sectionTitleLabel=[[UILabel alloc]initWithFrame:CGRectMake(16, 20, tableView.frame.size.width*0.5, 17)];
    [sectionTitleLabel setFont:[UIFont systemFontOfSize:16.0]];
    [sectionHeaderView addSubview:sectionTitleLabel];
    
    //for upper undeline view of section
    if (section!=0)
    {
        UIView* lineView=[[UIView alloc]initWithFrame:CGRectMake(tableView.frame.origin.x, tableView.frame.origin.y, tableView.frame.size.width, 1)];
        lineView.backgroundColor=[UIColor colorWithRed:170/255.0 green:170/255.0 blue:170/255.0 alpha:1];
        [sectionHeaderView addSubview:lineView];
    }
    
    //for lower underline view of section
    UIView* lineView1=[[UIView alloc]initWithFrame:CGRectMake(tableView.frame.origin.x, 60, tableView.frame.size.width, 1)];
    lineView1.backgroundColor=[UIColor colorWithRed:170/255.0 green:170/255.0 blue:170/255.0 alpha:1];
    [sectionHeaderView addSubview:lineView1];
    
    if (section==0)
    {
        sectionTitleLabel.text=@"Record Settings";
        return sectionHeaderView;
    }
    else
    if (section==1)
    {
        sectionTitleLabel.text=@"Storage Management";
        return sectionHeaderView;
    }
    else
    if (section==2)
    {
        sectionTitleLabel.text=@"Playback Auto-Rewind by";
        return sectionHeaderView;
    }
    else
        return sectionHeaderView;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section;
{
    return 60;

}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (section==0)
    {
        return recordSettingsItemsarray.count;
    }
    else
    if (section==1)
    {
        return storageManagementItemsArray.count;
    }
    else
    if (section==2)
    {
        return PlaybackAutoRewindByArray.count;
    }
    else
        return 0;
    
}



- (UITableViewCell *)tableView:(UITableView *)tableview cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    UITableViewCell *cell = [tableview dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
        cell.tag=indexPath.row;
        if (indexPath.section==0)
        {
            UILabel* nameLabel= [cell viewWithTag:101];
            nameLabel.text=[recordSettingsItemsarray objectAtIndex:indexPath.row];
            
            if (indexPath.row!=0 && indexPath.row!=4)
            {
                SwitchCreation* switchobj=[SwitchCreation new];
                switchobj.tableview=tableview;
                switchobj.cell=cell;
                switchobj.label=nameLabel;
                //            UISwitch *onoff = [[UISwitch alloc] initWithFrame: CGRectMake(tableview.frame.size.width-80, nameLabel.frame.origin.y, 0, 0)];
                //            [onoff addTarget: self action: @selector(flip:) forControlEvents:UIControlEventValueChanged];
                //            [cell addSubview:onoff];
                //cell.tag=indexPath.row;
                [self performSelector:@selector(createSwitch:) withObject:switchobj afterDelay:0.0];
                
            }
            
        }
        
        //to remove underline of last row of section so that scetion view underline does not ger override
        if (indexPath.section==0 && indexPath.row==recordSettingsItemsarray.count-1)
        {
            UIView* vw=[cell viewWithTag:102];
            [vw removeFromSuperview];
        }
        if (indexPath.section==1 && indexPath.row==storageManagementItemsArray.count-1)
        {
            UIView* vw=[cell viewWithTag:102];
            [vw removeFromSuperview];
        }
        if (indexPath.section==1)
        {
            UILabel* nameLabel= [cell viewWithTag:101];
            nameLabel.text=[storageManagementItemsArray objectAtIndex:indexPath.row];
        }
        if (indexPath.section==2)
        {
            UILabel* nameLabel= [cell viewWithTag:101];
            nameLabel.text=[PlaybackAutoRewindByArray objectAtIndex:indexPath.row];
        }

    return cell;
}

-(void)createSwitch:(SwitchCreation*)sender
{
    BOOL flag=false;
    for (UIView* subview in sender.cell.subviews)
    {
        if ([subview isKindOfClass:[UISwitch class]])
        {
            flag=true;
        }
    }
    
    if (flag==false)
    {
        UISwitch *onoff = [[UISwitch alloc] initWithFrame: CGRectMake(sender.tableview.frame.size.width-80,sender.label.frame.origin.y-7, 0, 0)];
        onoff.tag=sender.cell.tag;
        [onoff addTarget: self action: @selector(flip:) forControlEvents:UIControlEventValueChanged];
        [sender.cell addSubview:onoff];
        //cell.tag=indexPath.row;
    }

}

-(void)flip:(UISwitch*)sender
{
 
    NSLog(@"%d",sender.tag);

}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    //MainTabBarViewController * vc = [self.storyboard instantiateViewControllerWithIdentifier:@"MainTabBarViewController"];
    
    
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
