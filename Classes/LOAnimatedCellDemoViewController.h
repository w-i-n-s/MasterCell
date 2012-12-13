//
//  LOAnimatedCellDemoViewController.h
//  AnimatedTableViewCell
//
//  Created by Locassa on 23/05/2011.
//  Copyright 2011 Locassa Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LOAnimatedCellDemoViewController : UIViewController<UITableViewDelegate, UITableViewDataSource> {
	IBOutlet UITableView *demoTableView;
	NSMutableDictionary *selectedIndexes;
}

- (IBAction)goToLocassaPressed:(id)sender;

@end

