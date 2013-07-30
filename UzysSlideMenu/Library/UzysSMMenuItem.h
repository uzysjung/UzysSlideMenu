//
//  UzysSMMenuItem.h
//  UzysSlideMenu
//
//  Created by Jaehoon Jung on 13. 2. 21..
//  Copyright (c) 2013년 Uzys. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ARCHelper.h"
@class UzysSMMenuItem;
typedef void(^actionBlock)(UzysSMMenuItem *item);

@interface UzysSMMenuItem : NSObject
@property (nonatomic, copy) NSString *title;
@property (nonatomic, strong) UIImage *image;
@property (nonatomic, copy) actionBlock block;
@property (nonatomic, assign) NSInteger tag;

-(id)initWithTitle:(NSString *)title image:(UIImage *)image action:(actionBlock)block;
@end
