//
//  AnimatedTableViewCellAppDelegate.h
//  AnimatedTableViewCell
//
//  Created by Locassa on 23/05/2011.
//  Copyright 2011 Locassa Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@class LOAnimatedCellDemoViewController;

@interface AnimatedTableViewCellAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    LOAnimatedCellDemoViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet LOAnimatedCellDemoViewController *viewController;

@end

