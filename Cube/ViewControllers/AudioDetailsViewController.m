//
//  AudioDetailsViewController.m
//  Cube
//
//  Created by mac on 28/07/16.
//  Copyright © 2016 Xanadutec. All rights reserved.
//

#import "AudioDetailsViewController.h"

@interface AudioDetailsViewController ()

@end

@implementation AudioDetailsViewController
@synthesize transferDictationButton,deleteDictationButton;
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)viewWillAppear:(BOOL)animated
{
    self.navigationItem.title=@"Audio Details";
    self.navigationItem.leftBarButtonItem=[[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"Back"] style:UIBarButtonItemStylePlain target:self action:@selector(popViewController:)];
    transferDictationButton.layer.cornerRadius=4.0f;
    deleteDictationButton.layer.cornerRadius=4.0f;

}

-(void)popViewController:(id)sender
{
    [self.navigationController dismissViewControllerAnimated:YES completion:nil];

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
