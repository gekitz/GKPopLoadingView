//
//  GKViewController.m
//  GKLoadingViewDemo
//
//  Created by Georg Kitz on 17/05/14.
//  Copyright (c) 2014 Aurora Apps. All rights reserved.
//

#import "GKViewController.h"
#import "GKPopLoadingView.h"

@interface GKViewController ()
@property (nonatomic, strong) GKPopLoadingView *loadingView;
@end

@implementation GKViewController

#pragma mark -
#pragma mark Property

- (GKPopLoadingView *)loadingView {
    if (!_loadingView) {
        _loadingView = [[GKPopLoadingView alloc] init];
    }
    return _loadingView;
}

#pragma mark -
#pragma mark Public Methods

- (IBAction)showLoadingView:(id)sender {
    [self.loadingView show:YES withTitle:@"Loading..."];

    [self performSelector:@selector(hideLoadingView) withObject:nil afterDelay:4];
}

- (void)hideLoadingView {
    [self.loadingView show:NO withTitle:@"Loading..."];
}



@end
