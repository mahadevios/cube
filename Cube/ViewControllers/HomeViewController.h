//
//  HomeViewController.h
//  Cube
//
//  Created by mac on 27/07/16.
//  Copyright © 2016 Xanadutec. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HomeViewController : UIViewController
{
    UITapGestureRecognizer* tapRecogniser;
    UITapGestureRecognizer* tapRecogniser1;
    UITapGestureRecognizer* tapRecogniser2;

}
@property (weak, nonatomic) IBOutlet UIView *transferredView;
@property (weak, nonatomic) IBOutlet UIView *awaitingTransferView;
@property (weak, nonatomic) IBOutlet UIView *transferFailedView;
@end
