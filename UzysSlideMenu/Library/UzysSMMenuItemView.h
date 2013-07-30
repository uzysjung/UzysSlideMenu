//
//  UzysSMMenuView.h
//  UzysSlideMenu
//
//  Created by Jaehoon Jung on 13. 2. 21..
//  Copyright (c) 2013년 Uzys. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UzysSMMenuItem.h"

@class UzysSMMenuItemView;
@protocol UzysSMMenuItemViewActionDelegate <NSObject>
@optional
- (void) UzysSMMenuItemDidAction:(UzysSMMenuItemView *)itemView;
@end

@interface UzysSMMenuItemView : UIView<UIGestureRecognizerDelegate>

@property (weak, nonatomic) id<UzysSMMenuItemViewActionDelegate> delegate;

@property (strong, nonatomic) UzysSMMenuItem *item;
@property (strong, nonatomic) IBOutlet UIView *backgroundView;
@property (strong, nonatomic) IBOutlet UIImageView *imageView;
@property (strong, nonatomic) IBOutlet UILabel *label;
@property (strong, nonatomic) IBOutlet UIView *seperatorView;

@property (nonatomic, assign) CGRect targetFrame;
@end
