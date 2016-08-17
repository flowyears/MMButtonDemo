//
//  ViewController.m
//  MMButtonDemo
//
//  Created by boolean on 16/8/17.
//  Copyright © 2016年 boolean. All rights reserved.
//

#import "ViewController.h"
#import "MMButton.h"

@interface ViewController ()
@property(nonatomic,strong)MMButton *aButton;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    //修改imageAlignment 即可改变图片的位置
    self.aButton.imageAlignment = MMImageAlignmentRight;
    self.aButton.spaceBetweenTitleAndImage = 4;
    [self.view addSubview:self.aButton];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Getter And Setter
- (MMButton *)aButton
{
    if (!_aButton)
    {
        _aButton = [MMButton buttonWithType:UIButtonTypeCustom];
        [_aButton setImage:[UIImage imageNamed:@"cell_indicator"] forState:UIControlStateNormal];
        [_aButton setTitle:@"快来按我" forState:UIControlStateNormal];
        _aButton.frame = CGRectMake(0, 10, 100, 20);
        _aButton.center = self.view.center;
        [_aButton addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
        [_aButton setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
        [_aButton.titleLabel setFont:[UIFont systemFontOfSize:16]];
        
    }
    return _aButton;
}

- (void)btnClick:(UIButton *)btn
{
    
}
@end
