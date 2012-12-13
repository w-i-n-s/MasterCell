//
//  MasterCell.h
//  AnimatedTableViewCell
//
//  Created by wins on 13.12.12.
//
//

#import <UIKit/UIKit.h>

@interface MasterCell : UITableViewCell
@property (retain, nonatomic) IBOutlet UILabel *mainLabel;
@property (retain, nonatomic) IBOutlet UILabel *numberLabel;
@property (retain, nonatomic) IBOutlet UITextView *textView;

@end
