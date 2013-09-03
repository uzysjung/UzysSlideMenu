//
//  UzysViewController.m
//  UzysSlideMenu
//
//  Created by Jaehoon Jung on 13. 2. 21..
//  Copyright (c) 2013년 Uzys. All rights reserved.
//

#import "UzysViewController.h"
#import "UzysSlideMenu.h"
@interface UzysViewController ()
@property (nonatomic,strong) UzysSlideMenu *uzysSMenu;
@end

@implementation UzysViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    CGRect frame = [UIScreen mainScreen].applicationFrame;
    self.view.frame = frame;
    self.scrollView.frame = self.view.bounds;
    self.scrollView.contentSize = CGSizeMake(self.view.frame.size.width, self.imageView.bounds.size.height);
    self.scrollView.delegate =self;
    

    ah__block typeof(self) blockSelf = self;
    UzysSMMenuItem *item0 = [[UzysSMMenuItem alloc] initWithTitle:@"UzysSlide Menu" image:[UIImage imageNamed:@"a0.png"] action:^(UzysSMMenuItem *item) {
        NSLog(@"Item: %@ menuState : %d", item , blockSelf.uzysSMenu.menuState);

        [UIView animateWithDuration:0.2 animations:^{
            blockSelf.btnMain.frame = CGRectMake(100, 200, blockSelf.btnMain.bounds.size.width, blockSelf.btnMain.bounds.size.height);
        }];
    }];

    UzysSMMenuItem *item1 = [[UzysSMMenuItem alloc] initWithTitle:@"Favorite" image:[UIImage imageNamed:@"a1.png"] action:^(UzysSMMenuItem *item) {
        NSLog(@"Item: %@ menuState : %d", item , blockSelf.uzysSMenu.menuState);
        [UIView animateWithDuration:0.2 animations:^{
            blockSelf.btnMain.frame = CGRectMake(10, 150, blockSelf.btnMain.bounds.size.width, blockSelf.btnMain.bounds.size.height);
        }];
        
        
    }];
    UzysSMMenuItem *item2 = [[UzysSMMenuItem alloc] initWithTitle:@"Search" image:[UIImage imageNamed:@"a2.png"] action:^(UzysSMMenuItem *item) {
        NSLog(@"Item: %@ menuState : %d", item , blockSelf.uzysSMenu.menuState);
        [UIView animateWithDuration:0.2 animations:^{
            blockSelf.btnMain.frame = CGRectMake(10, 250, blockSelf.btnMain.bounds.size.width, blockSelf.btnMain.bounds.size.height);
        }];
    }];
    item0.tag = 0;
    item1.tag = 1;
    item2.tag = 2;
    
    self.uzysSMenu = [[UzysSlideMenu alloc] initWithItems:@[item0,item1,item2]];
 
    
    [self.view addSubview:self.uzysSMenu];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [_scrollView release];
    [_imageView release];
    [_btnMain release];
    [super ah_dealloc];
}

- (IBAction)actionMenu:(id)sender {
    NSLog(@"Btn touch");
    [self.uzysSMenu toggleMenu];
}

#pragma mark - UIScrollViewDelegate

-(void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    [self.uzysSMenu openIconMenu];

}
@end
