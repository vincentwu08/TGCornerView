//
//  ViewController.m
//  TGCornerView
//
//  Created by 吴腾钢 on 16/7/18.
//  Copyright © 2016年 VincentWu08. All rights reserved.
//

#import "ViewController.h"
#import "TGCornerView.h"
#import <Masonry.h>

@interface ViewController ()

@property (nonatomic, weak) TGCornerView *cornerViewTopLeft;

@property (nonatomic, weak) TGCornerView *cornerViewTopRight;

@property (nonatomic, weak) TGCornerView *cornerViewBottomLeft;

@property (nonatomic, weak) TGCornerView *cornerViewBottomRight;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    TGCornerView *cornerViewTopLeft = [[TGCornerView alloc] init];
    cornerViewTopLeft.cornerRoundDirectionType = TGRoundDirectionTypeTopLeft;
    cornerViewTopLeft.backgroundColor = [UIColor grayColor];
    self.cornerViewTopLeft = cornerViewTopLeft;
    [self.view addSubview:cornerViewTopLeft];
    [self.cornerViewTopLeft mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@100);
        make.centerX.equalTo(self.view);
        make.width.equalTo(@200);
        make.height.equalTo(@50);
    }];
    
    //    [self.cornerViewTopLeft mas_makeConstraints:<#^(MASConstraintMaker *make)block#>]
    
    TGCornerView *cornerViewTopRight = [[TGCornerView alloc] init];
    cornerViewTopRight.cornerRoundDirectionType = TGRoundDirectionTypeTopRight;
    cornerViewTopRight.backgroundColor = [UIColor blueColor];
    self.cornerViewTopRight = cornerViewTopRight;
    [self.view addSubview:cornerViewTopRight];
    [self.cornerViewTopRight mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.cornerViewTopLeft.mas_bottom).with.offset(20);
        make.centerX.equalTo(self.view);
        make.width.equalTo(@200);
        make.height.equalTo(@50);
    }];
    
    TGCornerView *cornerViewBottomLeft = [[TGCornerView alloc] init];
    cornerViewBottomLeft.cornerRoundDirectionType = TGRoundDirectionTypeBottomLeft;
    cornerViewBottomLeft.backgroundColor = [UIColor redColor];
    self.cornerViewBottomLeft = cornerViewBottomLeft;
    [self.view addSubview:cornerViewBottomLeft];
    [self.cornerViewBottomLeft mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.cornerViewTopRight.mas_bottom).with.offset(20);
        make.centerX.height.width.equalTo(self.cornerViewTopLeft);
    }];
    
    TGCornerView *cornerViewBottomRight = [[TGCornerView alloc] init];
    cornerViewBottomRight.cornerRoundDirectionType = TGRoundDirectionTypeBottomRight;
    cornerViewBottomRight.backgroundColor = [UIColor yellowColor];
    self.cornerViewBottomRight = cornerViewBottomRight;
    [self.view addSubview:cornerViewBottomRight];
    [self.cornerViewBottomRight mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.cornerViewBottomLeft.mas_bottom).with.offset(20);
        make.centerX.height.width.equalTo(self.cornerViewTopLeft);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.cornerViewBottomRight mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.cornerViewBottomLeft.mas_bottom).with.offset(80);
        make.centerX.height.width.equalTo(self.cornerViewTopLeft);
    }];
}

@end
