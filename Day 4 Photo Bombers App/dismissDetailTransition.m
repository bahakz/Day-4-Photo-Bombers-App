//
//  dismissDetailTransition.m
//  Day 4 Photo Bombers App
//
//  Created by Bakytzhan Baizhikenov on 6/15/15.
//  Copyright (c) 2015 Bakytzhan Baizhikenov. All rights reserved.
//

#import "dismissDetailTransition.h"

@implementation dismissDetailTransition


-(NSTimeInterval)transitionDuration:(id<UIViewControllerContextTransitioning>)transitionContext
{
    return 0.1;
}

-(void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext
{
    UIViewController *detailVC = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    
    [UIView animateWithDuration:0.1 animations:^{
        detailVC.view.alpha = 0.0;
    } completion:^(BOOL finished) {
        [detailVC.view removeFromSuperview];
        [transitionContext completeTransition:YES];
    }];
}

@end
