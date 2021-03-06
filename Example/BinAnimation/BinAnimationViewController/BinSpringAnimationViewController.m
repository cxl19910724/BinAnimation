//
//  BinSpringAnimationViewController.m
//  BinAnimation_Example
//
//  Created by angBin on 2018/10/18.
//  Copyright © 2018 angBin. All rights reserved.
//

#import "BinSpringAnimationViewController.h"
#import "BinExamplePublic.h"

@interface BinSpringAnimationViewController ()

@end

@implementation BinSpringAnimationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.animationArr = @[@"position", @"opacity", ];
}

- (void)tableViewDidClick:(NSString *)animationStr {
    NSUInteger index = [self.animationArr indexOfObject:animationStr];
    switch (index) {
        case 0:
            [self.animationlabel.layer bin_addAnimation_sync:^(BinAnimationFounder *founder) {
                founder.springAnimation.mass(1).stiffness(50).damping(2).initialVelocity(10).byValue([NSValue valueWithCGSize:CGSizeMake(0, 200)]);
            }];
            break;
        case 1:
            [self.animationlabel.layer bin_addAnimation_sync:^(BinAnimationFounder *founder) {
                founder.moreSpringAnimation(@"opacity").mass(1).stiffness(50).damping(2).initialVelocity(10).
                toValue(@0);
            }];
            break;
            
        default:
            break;
    }
}

@end
