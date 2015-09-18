//
//  CustomItem.h
//  CustomDrag
//
//  Created by AD-iOS on 15/9/17.
//  Copyright © 2015年 Adinnet. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CustomItem;
@protocol CustomItemDelegate <NSObject>

@optional

- (void)customItem:(CustomItem*)customItem didClickedDeleteButton:(UIButton*)deleteButton;

@end

@interface CustomItem : UIButton

@property (nonatomic, weak) id<CustomItemDelegate>delegate;

/**
 *  use this property to keep relationship with some info 
 */
@property (nonatomic, strong) NSDictionary *params;

@property (nonatomic, strong) UIButton *deleteButton;

- (void)visibleDeleteButton;
- (void)invisibleDeleteButton;

@end
