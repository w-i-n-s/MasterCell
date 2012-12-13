//
//  LOAnimatedCellDemoViewController.m
//  AnimatedTableViewCell
//
//  Created by Locassa on 23/05/2011.
//  Copyright 2011 Locassa Ltd. All rights reserved.
//

#import "LOAnimatedCellDemoViewController.h"
#import "MasterCell.h"

#define CELL_IDENT_ORDINARY @"MasterCell"
#define CELL_IDENT_EDIT     @"EditingCell"

#define CELL_HEIGHT_ORDINARY    70
#define CELL_HEIGHT_EDIT        110

@interface LOAnimatedCellDemoViewController (private)

- (BOOL)cellIsSelected:(NSIndexPath *)indexPath;

@end

@implementation LOAnimatedCellDemoViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	
	selectedIndexes = [[NSMutableDictionary alloc] init];
}

- (void)viewDidUnload {
	[selectedIndexes release];
	selectedIndexes = nil;
	
	[super viewDidUnload];
}

- (BOOL)cellIsSelected:(NSIndexPath *)indexPath {
	// Return whether the cell at the specified index path is selected or not
	NSNumber *selectedIndex = [selectedIndexes objectForKey:indexPath];
	return selectedIndex == nil ? FALSE : [selectedIndex boolValue];
}

- (IBAction)goToLocassaPressed:(id)sender {
	NSURL *url = [NSURL URLWithString:@"http://www.locassa.com"];
	[[UIApplication sharedApplication] openURL:url];
}

#pragma mark -
#pragma mark Tableview Datasource Methods

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 20;
}

- (void)configureCell:(MasterCell *)cell atIndexPath:(NSIndexPath *)indexPath {
    
    [[cell mainLabel] setText:([self cellIsSelected:indexPath])?@"Master":@"Edited" ];
    [[cell numberLabel] setText:[NSString stringWithFormat:@"%d.",[indexPath row]]];
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    //static NSString *CellIdentifier = @"Cell";
    NSString *CellIdentifier;
    
    if ([self cellIsSelected:indexPath])
        CellIdentifier = CELL_IDENT_EDIT;
    else
        CellIdentifier = CELL_IDENT_ORDINARY;
    
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
	if (cell == nil) {
        /*
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
		[cell.textLabel setText:[NSString stringWithFormat:@"Ooooh click me please! %d",[indexPath row]]];
		[cell.textLabel setTextAlignment:UITextAlignmentCenter];
         */
        
        cell = [[MasterCell alloc] initWithStyle:UITableViewCellStyleDefault
                                 reuseIdentifier:CellIdentifier];
    }
    
    [self configureCell:(MasterCell*)cell
            atIndexPath:indexPath];
    
    return cell;
}

#pragma mark -
#pragma mark Tableview Delegate Methods

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
	// Deselect cell
	[tableView deselectRowAtIndexPath:indexPath animated:TRUE];
	
	// Toggle 'selected' state
	BOOL isSelected = ![self cellIsSelected:indexPath];
	
	// Store cell 'selected' state keyed on indexPath
	NSNumber *selectedIndex = [NSNumber numberWithBool:isSelected];
	[selectedIndexes setObject:selectedIndex forKey:indexPath];	
		
	// This is where magic happens...
	[demoTableView beginUpdates];
	[demoTableView endUpdates];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {

	if([self cellIsSelected:indexPath])
		return CELL_HEIGHT_EDIT;
	else
        return CELL_HEIGHT_ORDINARY;
}

@end
