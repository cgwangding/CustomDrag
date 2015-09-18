//
//  CustomDragView.h
//  CustomDrag
//
//  Created by AD-iOS on 15/9/17.
//  Copyright © 2015年 Adinnet. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomItem.h"


@interface CustomDragView : UIView

/**
 *  Init CustomDragView with frame and
 *
 *  @param frame frame of self
 *  @param items dataSource
 *
 *  @return instantiation object
 */
- (instancetype)initWithFrame:(CGRect)frame andItems:(NSArray*)items;

/**
 * 数据源,当你需要改变数据源时，必须调用reloadData方法，直接改变数据源并不会有什么效果
 */
@property (nonatomic, strong) NSArray *items;

/**
 *  每行item的数量，默认5个
 */
@property (nonatomic, assign) NSInteger lineOfItemCount;

/**
 *  每个item的大小，默认自动计算
 */
@property (nonatomic, assign) CGSize itemSize;

/**
 *  两列item之间的距离，默认10.0f;
 */
@property (nonatomic, assign) CGFloat itemSpacing;

/**
 *  两行item 之间的距离 ， 默认20.0f;
 */
@property (nonatomic, assign) CGFloat lineSpacing;

/**
 *  布局item的content距离上下左右的距离，默认（10,10,0,10）
 */
@property (nonatomic, assign) UIEdgeInsets contentEdgeInsets;

//当数据源更新时调用这个方法
- (void)reloadData;

@end
