//
//  CustomItem.m
//  CustomDrag
//
//  Created by AD-iOS on 15/9/17.
//  Copyright © 2015年 Adinnet. All rights reserved.
//

#import "CustomItem.h"

@implementation CustomItem

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (void)layoutSubviews
{
    [super layoutSubviews];
    [self.deleteButton setFrame:CGRectMake(0, 0, 20, 20)];
    [self addSubview:self.deleteButton];
    
}

- (void)deleteButtonClicked:(UIButton*)button
{
    if ([self.delegate respondsToSelector:@selector(customItem:didClickedDeleteButton:)]) {
        [self.delegate customItem:self didClickedDeleteButton:button];
    }
}

- (void)visibleDeleteButton
{
    self.deleteButton.hidden = NO;
}

- (void)invisibleDeleteButton
{
    self.deleteButton.hidden = YES;
}

- (UIButton *)deleteButton
{
    if (_deleteButton == nil) {
        _deleteButton = [UIButton buttonWithType:UIButtonTypeCustom];
        _deleteButton.backgroundColor = [UIColor orangeColor];
        _deleteButton.hidden = YES;
        [_deleteButton addTarget:self action:@selector(deleteButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _deleteButton;
}

@end
