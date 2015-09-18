//
//  ViewController.m
//  CustomDrag
//
//  Created by AD-iOS on 15/9/17.
//  Copyright © 2015年 Adinnet. All rights reserved.
//

#import "ViewController.h"
#import "CustomDragView.h"

@interface ViewController ()<CustomItemDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSMutableArray *items = [NSMutableArray array];
    for (int i = 0;i < 30 ; i ++ ) {
        CustomItem *item = [CustomItem buttonWithType:UIButtonTypeCustom];
        [item setTitle:[NSString stringWithFormat:@"%i",i] forState:UIControlStateNormal];
        [item addTarget:self action:@selector(clicked:) forControlEvents:UIControlEventTouchUpInside];
        item.backgroundColor = [UIColor redColor];
        item.delegate = self;
        [items addObject:item];
    }
    CustomDragView *view = [[CustomDragView alloc]initWithFrame:self.view.frame andItems:items];

    [self.view addSubview:view];
}


- (void)clicked:(UIButton*)button
{
    NSLog(@"%@",button.currentTitle);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)customItem:(CustomItem *)customItem didClickedDeleteButton:(UIButton *)deleteButton
{
    NSLog(@"didClickedDeleteButton>>>%@",customItem.currentTitle);
}

@end
