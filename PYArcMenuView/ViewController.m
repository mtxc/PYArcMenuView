//
//  ViewController.m
//  PYArcMenuView
//
//  Created by 杨鹏 on 15/12/22.
//  Copyright © 2015年 mtxc. All rights reserved.
//

#import "ViewController.h"
#import "PYArcMenuView.h"

@interface ViewController () <PYArcMenuViewDelegate>

@property (strong, nonatomic) NSArray<PYArcMenuView *> *menuArray;
@property (strong, nonatomic) NSArray<UIImage *> *menuImageArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    PYArcMenuView *arcMenuViewLeftTop = [[PYArcMenuView alloc] initWithFrame:CGRectMake(0, 64, self.view.frame.size.width, self.view.frame.size.height-64) withPosition:PYArcMenuViewPositionLeftTop];
    arcMenuViewLeftTop.delegate = self;
    [self.view addSubview:arcMenuViewLeftTop];
    
    PYArcMenuView *arcMenuViewRightTop = [[PYArcMenuView alloc] initWithFrame:CGRectMake(0, 64, self.view.frame.size.width, self.view.frame.size.height-64) withPosition:PYArcMenuViewPositionRightTop];
    arcMenuViewRightTop.delegate = self;
    [self.view addSubview:arcMenuViewRightTop];
    
    PYArcMenuView *arcMenuViewLeftBottom = [[PYArcMenuView alloc] initWithFrame:CGRectMake(0, 64, self.view.frame.size.width, self.view.frame.size.height-64) withPosition:PYArcMenuViewPositionLeftBottom];
    arcMenuViewLeftBottom.delegate = self;
    [self.view addSubview:arcMenuViewLeftBottom];
    
    PYArcMenuView *arcMenuViewRightBottom = [[PYArcMenuView alloc] initWithFrame:CGRectMake(0, 64, self.view.frame.size.width, self.view.frame.size.height-64) withPosition:PYArcMenuViewPositionRightBottom];
    arcMenuViewRightBottom.delegate = self;
    [self.view addSubview:arcMenuViewRightBottom];
    
    self.menuArray = @[arcMenuViewLeftTop, arcMenuViewRightTop, arcMenuViewLeftBottom, arcMenuViewRightBottom];
    self.menuImageArray = @[[UIImage imageNamed:@"item_camera.png"], [UIImage imageNamed:@"item_music.png"], [UIImage imageNamed:@"item_place.png"], [UIImage imageNamed:@"item_sleep.png"], [UIImage imageNamed:@"item_thought.png"], [UIImage imageNamed:@"item_with.png"]];

    for (int i=0; i<self.menuArray.count; i++) {
        [self.menuArray[i] addMenuItemsWithUIImages:self.menuImageArray];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)PYArcMenuWillExpand:(PYArcMenuView *)menu {
    
}

- (void)PYArcMenuWillUnExpand:(PYArcMenuView *)menu {
    
}

- (void)PYArcMenuView:(PYArcMenuView *)menu didSelectedForIndex:(NSInteger)index {
    NSLog(@"%ld", index);
}

@end
