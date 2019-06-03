//
//  TGCornerView.m
//  TGCornerView
//
//  Created by 吴腾钢 on 16/7/18.
//  Copyright © 2016年 VincentWu08. All rights reserved.
//

#import "TGCornerView.h"

@implementation TGCornerView

- (void)setCornerRoundDirectionType:(TGRoundDirectionType)cornerRoundDirectionType {
    _cornerRoundDirectionType = cornerRoundDirectionType;
    CGFloat cornerRadii = self.radiusSize ? self.radiusSize : 5.0f;
    UIBezierPath *maskPath;
    maskPath = [UIBezierPath bezierPathWithRoundedRect:self.bounds byRoundingCorners:(UIRectCorner)cornerRoundDirectionType cornerRadii:CGSizeMake(cornerRadii, cornerRadii)];
    CAShapeLayer *maskLayer = [[CAShapeLayer alloc] init];
    maskLayer.frame = self.bounds;
    maskLayer.path = maskPath.CGPath;
    self.layer.mask = maskLayer;
}

- (void)setRadiusSize:(CGFloat)radiusSize {
    _radiusSize = radiusSize;
    self.cornerRoundDirectionType = self.cornerRoundDirectionType;
}

- (void)layoutSublayersOfLayer:(CALayer *)layer {
    [super layoutSublayersOfLayer:layer];
    self.cornerRoundDirectionType = self.cornerRoundDirectionType;
}

@end
