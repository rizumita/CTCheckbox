//
//  CTCheckbox.m
//  CTCheckbox
//
//  Created by 和泉田 領一 on 2013/03/06.
//  Copyright (c) 2013年 CAPH. All rights reserved.
//

#import "CTCheckbox.h"

@implementation CTCheckbox

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setUp];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self setUp];
    }
    return self;
}

- (void)setUp
{
    self.checkboxSideLength = 20.0;
    self.checkboxColor = [UIColor blackColor];
    self.backgroundColor = [UIColor clearColor];
    self.textLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    [self addSubview:self.textLabel];
}

- (void)setChecked:(BOOL)checked
{
    _checked = checked;

    [self setNeedsDisplay];

    [self sendActionsForControlEvents:UIControlEventValueChanged];
}

- (void)drawRect:(CGRect)rect
{
    CGRect frame = CGRectIntegral(CGRectMake(0, (rect.size.height - self.checkboxSideLength) / 2.0, self.checkboxSideLength, self.checkboxSideLength));
    UIBezierPath *bezierPath = [UIBezierPath bezierPath];

    if (self.checked) {
        [bezierPath moveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.75000 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.21875 * CGRectGetHeight(frame))];
        [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 0.40000 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.52500 * CGRectGetHeight(frame))];
        [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 0.28125 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.37500 * CGRectGetHeight(frame))];
        [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 0.17500 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.47500 * CGRectGetHeight(frame))];
        [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 0.40000 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.75000 * CGRectGetHeight(frame))];
        [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 0.81250 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.28125 * CGRectGetHeight(frame))];
        [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 0.75000 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.21875 * CGRectGetHeight(frame))];
        [bezierPath closePath];
    }

    [bezierPath moveToPoint:CGPointMake(CGRectGetMinX(frame) + 0.87500 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.12500 * CGRectGetHeight(frame))];
    [bezierPath addLineToPoint:CGPointMake(CGRectGetMinX(frame) + 0.87500 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.87500 * CGRectGetHeight(frame))];
    [bezierPath addLineToPoint:CGPointMake(CGRectGetMinX(frame) + 0.12500 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.87500 * CGRectGetHeight(frame))];
    [bezierPath addLineToPoint:CGPointMake(CGRectGetMinX(frame) + 0.12500 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.12500 * CGRectGetHeight(frame))];
    [bezierPath addLineToPoint:CGPointMake(CGRectGetMinX(frame) + 0.87500 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.12500 * CGRectGetHeight(frame))];
    [bezierPath closePath];
    [bezierPath moveToPoint:CGPointMake(CGRectGetMinX(frame) + 0.90625 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.00000 * CGRectGetHeight(frame))];
    [bezierPath addLineToPoint:CGPointMake(CGRectGetMinX(frame) + 0.09375 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.00000 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint:CGPointMake(CGRectGetMinX(frame) + 0.00000 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.09375 * CGRectGetHeight(frame)) controlPoint1:CGPointMake(CGRectGetMinX(frame) + 0.04219 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.00000 * CGRectGetHeight(frame)) controlPoint2:CGPointMake(CGRectGetMinX(frame) + 0.00000 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.04219 * CGRectGetHeight(frame))];
    [bezierPath addLineToPoint:CGPointMake(CGRectGetMinX(frame) + 0.00000 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.90625 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint:CGPointMake(CGRectGetMinX(frame) + 0.09375 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 1.00000 * CGRectGetHeight(frame)) controlPoint1:CGPointMake(CGRectGetMinX(frame) + 0.00000 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.95781 * CGRectGetHeight(frame)) controlPoint2:CGPointMake(CGRectGetMinX(frame) + 0.04219 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 1.00000 * CGRectGetHeight(frame))];
    [bezierPath addLineToPoint:CGPointMake(CGRectGetMinX(frame) + 0.90625 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 1.00000 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint:CGPointMake(CGRectGetMinX(frame) + 1.00000 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.90625 * CGRectGetHeight(frame)) controlPoint1:CGPointMake(CGRectGetMinX(frame) + 0.95781 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 1.00000 * CGRectGetHeight(frame)) controlPoint2:CGPointMake(CGRectGetMinX(frame) + 1.00000 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.95781 * CGRectGetHeight(frame))];
    [bezierPath addLineToPoint:CGPointMake(CGRectGetMinX(frame) + 1.00000 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.09375 * CGRectGetHeight(frame))];
    [bezierPath addCurveToPoint:CGPointMake(CGRectGetMinX(frame) + 0.90625 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.00000 * CGRectGetHeight(frame)) controlPoint1:CGPointMake(CGRectGetMinX(frame) + 1.00000 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.04219 * CGRectGetHeight(frame)) controlPoint2:CGPointMake(CGRectGetMinX(frame) + 0.95781 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.00000 * CGRectGetHeight(frame))];
    [bezierPath addLineToPoint:CGPointMake(CGRectGetMinX(frame) + 0.90625 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.00000 * CGRectGetHeight(frame))];
    [bezierPath closePath];
    bezierPath.miterLimit = 4;


    [self.checkboxColor setFill];
    [bezierPath fill];
}

- (void)layoutSubviews
{
    [super layoutSubviews];

    CGFloat textLabelOriginX = self.checkboxSideLength + 5.0;
    CGSize textLabelMaxSize = CGSizeMake(CGRectGetWidth(self.bounds) - textLabelOriginX, CGRectGetHeight(self.bounds));

    CGSize textLabelSize;
    if ([[[UIDevice currentDevice] systemVersion] compare:@"7.0" options:NSNumericSearch] != NSOrderedAscending) {
        textLabelSize = [self.textLabel.text sizeWithAttributes:@{NSFontAttributeName : self.textLabel.font}];
    } else {
        textLabelSize = [self.textLabel.text sizeWithFont:self.textLabel.font constrainedToSize:textLabelMaxSize lineBreakMode:self.textLabel.lineBreakMode];
    }

    self.textLabel.frame = CGRectIntegral(CGRectMake(textLabelOriginX, (CGRectGetHeight(self.bounds) - textLabelSize.height) / 2.0, textLabelSize.width, textLabelSize.height));
}

- (void)endTrackingWithTouch:(UITouch *)touch withEvent:(UIEvent *)event
{
    CGPoint location = [touch locationInView:self];
    if (CGRectContainsPoint(self.bounds, location)) {
        self.checked = !self.checked;
    }
}

@end
