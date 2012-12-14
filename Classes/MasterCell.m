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
    [_webView release];
    [super dealloc];
}
@end
