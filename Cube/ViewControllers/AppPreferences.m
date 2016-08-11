//
//  AppPreferences.m
//  Cube
//
//  Created by mac on 07/08/16.
//  Copyright © 2016 Xanadutec. All rights reserved.
//

#import "AppPreferences.h"

@implementation AppPreferences
static AppPreferences* singleton=nil;

@synthesize popupTableViewCellItemsArray;

+(AppPreferences*)sharedPreferences
{
    if (singleton==nil)
    {
        singleton=[[AppPreferences alloc]init];
    }
    return singleton;
 }
@end
