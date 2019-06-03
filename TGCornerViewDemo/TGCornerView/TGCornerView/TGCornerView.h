//
//  TGCornerView.h
//  TGCornerView
//
//  Created by 吴腾钢 on 16/7/18.
//  Copyright © 2016年 VincentWu08. All rights reserved.
//

//typedef NS_OPTIONS(NSUInteger, UIRectCorner) {
//    UIRectCornerTopLeft     = 1 << 0,
//    UIRectCornerTopRight    = 1 << 1,
//    UIRectCornerBottomLeft  = 1 << 2,
//    UIRectCornerBottomRight = 1 << 3,
//    UIRectCornerAllCorners  = ~0UL
//};
typedef enum {
    TGRoundDirectionTypeTopLeft = 1, //1 1 1
    TGRoundDirectionTypeTopRight = 1 << 1, //2 2 10 转换成 10进制 2
    TGRoundDirectionTypeBottomLeft = 1 << 2, //4 3 100 转换成 10进制 4
    TGRoundDirectionTypeBottomRight = 1 << 3, //8 4 1000 转换成 10进制 8
    TGRoundDirectionTypeTop = TGRoundDirectionTypeTopLeft | TGRoundDirectionTypeTopRight, //16 5 10000 转换成 10进制 16
    TGRoundDirectionTypeLeft = TGRoundDirectionTypeTopLeft | TGRoundDirectionTypeBottomLeft,
    TGRoundDirectionTypeBottom = TGRoundDirectionTypeBottomLeft | TGRoundDirectionTypeBottomRight,
    TGRoundDirectionTypeRight = TGRoundDirectionTypeTopRight | TGRoundDirectionTypeBottomRight,
    TGRoundDirectionTypeAll = ~0UL
}TGRoundDirectionType;

#import <UIKit/UIKit.h>

@interface TGCornerView : UIView

@property (nonatomic, assign) TGRoundDirectionType cornerRoundDirectionType;

@property (nonatomic, assign) CGFloat radiusSize;

@end
