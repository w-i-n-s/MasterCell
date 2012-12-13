//
//  MasterCell.m
//  AnimatedTableViewCell
//
//  Created by wins on 13.12.12.
//
//

#import "MasterCell.h"

@implementation MasterCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {

        NSArray *nibContents = [[NSBundle mainBundle] loadNibNamed:@"MasterCell"
                                                             owner:self
                                                           options:nil];

        for (MasterCell *aCell in nibContents)
            if ([[aCell valueForKey:@"reuseIdentifier"] isEqual:reuseIdentifier]) {
                
                self = aCell;
                break;
            }
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)dealloc {
    [_mainLabel release];
    [_numberLabel release];
    [_textView release];
    [super dealloc];
}
@end
