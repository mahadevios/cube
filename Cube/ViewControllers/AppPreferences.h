//
//  AppPreferences.h
//  Cube
//
//  Created by mac on 07/08/16.
//  Copyright © 2016 Xanadutec. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AppPreferences : NSObject

+(AppPreferences *) sharedPreferences;

@property(nonatomic,strong)NSMutableArray* popupTableViewCellItemsArray;
@end
