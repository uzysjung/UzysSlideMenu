//
//  UzysSlideMenu.h
//  UzysSlideMenu
//
//  Created by Jaehoon Jung on 13. 2. 21..
//  Copyright (c) 2013년 Uzys. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UzysSMMenuItem.h"
#import "UzysSMMenuItemView.h"

typedef enum _UzysSMState {
    STATE_ICON_MENU,
    STATE_MAIN_MENU,
    STATE_FULL_MENU
} UzysSMState;

@interface UzysSlideMenu : UIView <UzysSMMenuItemViewActionDelegate>

@property (nonatomic,strong) NSArray *pItems;
@property (nonatomic,readonly) UzysSMState menuState;
- (id)initWithItems:(NSArray *)items;
- (void)toggleMenu;
- (void)toggleMenuWithCompletion:(void(^)(UzysSMState state))block;
- (void)openIconMenu;


- (CGRect)getMainIconFrame:(UIView *)view;
@end
