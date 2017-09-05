//
//  TGCornerView.h
//  TGCornerView
//
//  Created by 吴腾钢 on 16/7/18.
//  Copyright © 2016年 VincentWu08. All rights reserved.
//

typedef enum {
    TGRoundDirectionTypeTopLeft = 1, //1 1 1
    TGRoundDirectionTypeTopRight = 1 << 1, //2 2 10 转换成 10进制 2
    TGRoundDirectionTypeBottomLeft = 1 << 2, //4 3 100 转换成 10进制 4
    TGRoundDirectionTypeBottomRight = 1 << 3, //8 4 1000 转换成 10进制 8
    TGRoundDirectionTypeTop = 1 << 4, //16 5 10000 转换成 10进制 16
    TGRoundDirectionTypeLeft = 1 << 5,
    TGRoundDirectionTypeBottom = 1 << 6,
    TGRoundDirectionTypeRight = 1 << 7,
    TGRoundDirectionTypeAll = 1 << 8
}TGRoundDirectionType;

#import <UIKit/UIKit.h>

@interface TGCornerView : UIView

@property (nonatomic, assign) TGRoundDirectionType cornerRoundDirectionType;

@property (nonatomic, assign) NSUInteger radiusSize;

@end
