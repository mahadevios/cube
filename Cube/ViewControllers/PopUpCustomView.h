//
//  PopUpCustomView.h
//  Cube
//
//  Created by mac on 06/08/16.
//  Copyright © 2016 Xanadutec. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PopUpCustomView : UIView
{
    UIView* overlay;
    UITapGestureRecognizer* tap;
}
- (UIView*)initWithFrame:(CGRect)frame andSubViews:(NSArray*)subViewNamesArray :(id)sender;
- (UIView*)initWithFrame:(CGRect)frame  sender:(id)sender;

@end
