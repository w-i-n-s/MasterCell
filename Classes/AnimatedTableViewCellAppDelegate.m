//
//  AnimatedTableViewCellAppDelegate.m
//  AnimatedTableViewCell
//
//  Created by Locassa on 23/05/2011.
//  Copyright 2011 Locassa Ltd. All rights reserved.
//

#import "AnimatedTableViewCellAppDelegate.h"
#import "LOAnimatedCellDemoViewController.h"

@implementation AnimatedTableViewCellAppDelegate

@synthesize window;
@synthesize viewController;


#pragma mark -
#pragma mark Application lifecycle

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    [self.window addSubview:viewController.view];
    [self.window makeKeyAndVisible];
	
    return YES;
}

- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
