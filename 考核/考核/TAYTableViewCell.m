//
//  TAYTableViewCell.m
//  考核
//
//  Created by cinderella on 2019/8/6.
//  Copyright © 2019 cinderella. All rights reserved.
//

#import "TAYTableViewCell.h"

@implementation TAYTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    
    self = [super initWithStyle:style  reuseIdentifier:reuseIdentifier];
    
    _touImageView = [[UIImageView alloc] init];
    [self.contentView addSubview:_touImageView];
    
    _contentImageView = [[UIImageView alloc] init];
    [self.contentView addSubview:_contentImageView];
    
    _nameLabel = [[UILabel alloc] init];
    [self.contentView addSubview:_nameLabel];
    
    _contentLabel = [[UILabel alloc] init];
    [self.contentView addSubview:_contentLabel];
    
    _frameLabel = [[UILabel alloc] init];
    [self.contentView addSubview:_frameLabel];
    
    _timeLabel = [[UILabel alloc] init];
    [self.contentView addSubview:_timeLabel];
    
    
    return self;
}

- (void)layoutSubviews {
    
    [super layoutSubviews];
    
    _touImageView.frame = CGRectMake(10, 10, 50, 50);
    
    _nameLabel.frame = CGRectMake(65, 10, 200, 20);
    _nameLabel.font = [UIFont systemFontOfSize:17];
    _nameLabel.textColor = [UIColor colorWithRed:0.05 green:0.42 blue:0.72 alpha:1];
    
    _contentLabel.frame = CGRectMake(65, 35, 300, 50);
    _contentLabel.numberOfLines = 0;
    _contentLabel.font = [UIFont systemFontOfSize:21];
    
    _contentImageView.frame = CGRectMake(65, 95, 150, 300);
    
    _frameLabel.frame = CGRectMake(65, 403, 300, 20);
    _frameLabel.font = [UIFont systemFontOfSize:16];
    _frameLabel.textColor = [UIColor colorWithRed:0.05 green:0.42 blue:0.72 alpha:1];
    
    _timeLabel.frame = CGRectMake(65, 428, 210, 20);
    _timeLabel.textColor = [UIColor colorWithRed:0.57 green:0.57 blue:0.57 alpha:1];
    _timeLabel.font = [UIFont systemFontOfSize:16];
    
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
