//
//  CTCheckbox.m
//  CTCheckbox
//
//  Created by 和泉田 領一 on 2013/03/06.
//  Copyright (c) 2013年 CAPH. All rights reserved.
//

#import "CTCheckbox.h"

@implementation CTCheckbox

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.checkboxSideLength = 20.0;
        self.checkboxColor = [UIColor blackColor];
        self.backgroundColor = [UIColor whiteColor];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        self.checkboxSideLength = 20.0;
        self.checkboxColor = [UIColor blackColor];
        self.backgroundColor = [UIColor whiteColor];
        self.textLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        [self addSubview:self.textLabel];
    }
    return self;
}

- (void)setChecked:(BOOL)checked {
    _checked = checked;

    [self setNeedsDisplay];

    [self sendActionsForControlEvents:UIControlEventValueChanged];
}

- (void)drawRect:(CGRect)rect {
    CGRect frame = CGRectMake(0, (rect.size.height - self.checkboxSideLength) / 2.0, self.checkboxSideLength, self.checkboxSideLength);

    if (self.checked) {
        UIBezierPath *bezier31Path = [UIBezierPath bezierPath];
        [bezier31Path moveToPoint:CGPointMake(CGRectGetMinX(frame) + 0.70312 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.24805 * CGRectGetHeight(frame))];
        [bezier31Path addCurveToPoint:CGPointMake(CGRectGetMinX(frame) + 0.40625 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.53125 * CGRectGetHeight(frame)) controlPoint1:CGPointMake(CGRectGetMinX(frame) + 0.63924 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.28645 * CGRectGetHeight(frame)) controlPoint2:CGPointMake(CGRectGetMinX(frame) + 0.40625 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.53125 * CGRectGetHeight(frame))];
        [bezier31Path addCurveToPoint:CGPointMake(CGRectGetMinX(frame) + 0.28125 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.37500 * CGRectGetHeight(frame)) controlPoint1:CGPointMake(CGRectGetMinX(frame) + 0.40625 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.53125 * CGRectGetHeight(frame)) controlPoint2:CGPointMake(CGRectGetMinX(frame) + 0.33594 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.39062 * CGRectGetHeight(frame))];
        [bezier31Path addCurveToPoint:CGPointMake(CGRectGetMinX(frame) + 0.18750 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.46875 * CGRectGetHeight(frame)) controlPoint1:CGPointMake(CGRectGetMinX(frame) + 0.22656 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.35938 * CGRectGetHeight(frame)) controlPoint2:CGPointMake(CGRectGetMinX(frame) + 0.17153 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.40234 * CGRectGetHeight(frame))];
        [bezier31Path addCurveToPoint:CGPointMake(CGRectGetMinX(frame) + 0.40625 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.75000 * CGRectGetHeight(frame)) controlPoint1:CGPointMake(CGRectGetMinX(frame) + 0.20347 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.53516 * CGRectGetHeight(frame)) controlPoint2:CGPointMake(CGRectGetMinX(frame) + 0.25912 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.81881 * CGRectGetHeight(frame))];
        [bezier31Path addCurveToPoint:CGPointMake(CGRectGetMinX(frame) + 0.77930 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.33594 * CGRectGetHeight(frame)) controlPoint1:CGPointMake(CGRectGetMinX(frame) + 0.55338 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.68119 * CGRectGetHeight(frame)) controlPoint2:CGPointMake(CGRectGetMinX(frame) + 0.69336 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.46875 * CGRectGetHeight(frame))];
        [bezier31Path addCurveToPoint:CGPointMake(CGRectGetMinX(frame) + 0.70312 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.24805 * CGRectGetHeight(frame)) controlPoint1:CGPointMake(CGRectGetMinX(frame) + 0.86523 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.20312 * CGRectGetHeight(frame)) controlPoint2:CGPointMake(CGRectGetMinX(frame) + 0.76701 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.20964 * CGRectGetHeight(frame))];
        [bezier31Path closePath];
        [bezier31Path moveToPoint:CGPointMake(CGRectGetMinX(frame) + 0.87500 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.12500 * CGRectGetHeight(frame))];
        [bezier31Path addLineToPoint:CGPointMake(CGRectGetMinX(frame) + 0.87500 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.87500 * CGRectGetHeight(frame))];
        [bezier31Path addLineToPoint:CGPointMake(CGRectGetMinX(frame) + 0.12500 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.87500 * CGRectGetHeight(frame))];
        [bezier31Path addLineToPoint:CGPointMake(CGRectGetMinX(frame) + 0.12500 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.12500 * CGRectGetHeight(frame))];
        [bezier31Path addLineToPoint:CGPointMake(CGRectGetMinX(frame) + 0.87500 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.12500 * CGRectGetHeight(frame))];
        [bezier31Path closePath];
        [bezier31Path moveToPoint:CGPointMake(CGRectGetMinX(frame) + 0.90625 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.00000 * CGRectGetHeight(frame))];
        [bezier31Path addLineToPoint:CGPointMake(CGRectGetMinX(frame) + 0.09375 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.00000 * CGRectGetHeight(frame))];
        [bezier31Path addCurveToPoint:CGPointMake(CGRectGetMinX(frame) + 0.00000 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.09375 * CGRectGetHeight(frame)) controlPoint1:CGPointMake(CGRectGetMinX(frame) + 0.04219 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.00000 * CGRectGetHeight(frame)) controlPoint2:CGPointMake(CGRectGetMinX(frame) + 0.00000 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.04219 * CGRectGetHeight(frame))];
        [bezier31Path addLineToPoint:CGPointMake(CGRectGetMinX(frame) + 0.00000 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.90625 * CGRectGetHeight(frame))];
        [bezier31Path addCurveToPoint:CGPointMake(CGRectGetMinX(frame) + 0.09375 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 1.00000 * CGRectGetHeight(frame)) controlPoint1:CGPointMake(CGRectGetMinX(frame) + 0.00000 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.95781 * CGRectGetHeight(frame)) controlPoint2:CGPointMake(CGRectGetMinX(frame) + 0.04219 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 1.00000 * CGRectGetHeight(frame))];
        [bezier31Path addLineToPoint:CGPointMake(CGRectGetMinX(frame) + 0.90625 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 1.00000 * CGRectGetHeight(frame))];
        [bezier31Path addCurveToPoint:CGPointMake(CGRectGetMinX(frame) + 1.00000 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.90625 * CGRectGetHeight(frame)) controlPoint1:CGPointMake(CGRectGetMinX(frame) + 0.95781 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 1.00000 * CGRectGetHeight(frame)) controlPoint2:CGPointMake(CGRectGetMinX(frame) + 1.00000 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.95781 * CGRectGetHeight(frame))];
        [bezier31Path addLineToPoint:CGPointMake(CGRectGetMinX(frame) + 1.00000 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.09375 * CGRectGetHeight(frame))];
        [bezier31Path addCurveToPoint:CGPointMake(CGRectGetMinX(frame) + 0.90625 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.00000 * CGRectGetHeight(frame)) controlPoint1:CGPointMake(CGRectGetMinX(frame) + 1.00000 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.04219 * CGRectGetHeight(frame)) controlPoint2:CGPointMake(CGRectGetMinX(frame) + 0.95781 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.00000 * CGRectGetHeight(frame))];
        [bezier31Path addLineToPoint:CGPointMake(CGRectGetMinX(frame) + 0.90625 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.00000 * CGRectGetHeight(frame))];
        [bezier31Path closePath];
        bezier31Path.miterLimit = 4;

        [self.checkboxColor setFill];
        [bezier31Path fill];
    } else {
        UIBezierPath *bezier31Path = [UIBezierPath bezierPath];
        [bezier31Path moveToPoint:CGPointMake(CGRectGetMinX(frame) + 0.87500 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.12500 * CGRectGetHeight(frame))];
        [bezier31Path addLineToPoint:CGPointMake(CGRectGetMinX(frame) + 0.87500 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.87500 * CGRectGetHeight(frame))];
        [bezier31Path addLineToPoint:CGPointMake(CGRectGetMinX(frame) + 0.12500 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.87500 * CGRectGetHeight(frame))];
        [bezier31Path addLineToPoint:CGPointMake(CGRectGetMinX(frame) + 0.12500 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.12500 * CGRectGetHeight(frame))];
        [bezier31Path addLineToPoint:CGPointMake(CGRectGetMinX(frame) + 0.87500 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.12500 * CGRectGetHeight(frame))];
        [bezier31Path closePath];
        [bezier31Path moveToPoint:CGPointMake(CGRectGetMinX(frame) + 0.90625 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.00000 * CGRectGetHeight(frame))];
        [bezier31Path addLineToPoint:CGPointMake(CGRectGetMinX(frame) + 0.09375 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.00000 * CGRectGetHeight(frame))];
        [bezier31Path addCurveToPoint:CGPointMake(CGRectGetMinX(frame) + 0.00000 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.09375 * CGRectGetHeight(frame)) controlPoint1:CGPointMake(CGRectGetMinX(frame) + 0.04219 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.00000 * CGRectGetHeight(frame)) controlPoint2:CGPointMake(CGRectGetMinX(frame) + 0.00000 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.04219 * CGRectGetHeight(frame))];
        [bezier31Path addLineToPoint:CGPointMake(CGRectGetMinX(frame) + 0.00000 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.90625 * CGRectGetHeight(frame))];
        [bezier31Path addCurveToPoint:CGPointMake(CGRectGetMinX(frame) + 0.09375 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 1.00000 * CGRectGetHeight(frame)) controlPoint1:CGPointMake(CGRectGetMinX(frame) + 0.00000 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.95781 * CGRectGetHeight(frame)) controlPoint2:CGPointMake(CGRectGetMinX(frame) + 0.04219 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 1.00000 * CGRectGetHeight(frame))];
        [bezier31Path addLineToPoint:CGPointMake(CGRectGetMinX(frame) + 0.90625 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 1.00000 * CGRectGetHeight(frame))];
        [bezier31Path addCurveToPoint:CGPointMake(CGRectGetMinX(frame) + 1.00000 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.90625 * CGRectGetHeight(frame)) controlPoint1:CGPointMake(CGRectGetMinX(frame) + 0.95781 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 1.00000 * CGRectGetHeight(frame)) controlPoint2:CGPointMake(CGRectGetMinX(frame) + 1.00000 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.95781 * CGRectGetHeight(frame))];
        [bezier31Path addLineToPoint:CGPointMake(CGRectGetMinX(frame) + 1.00000 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.09375 * CGRectGetHeight(frame))];
        [bezier31Path addCurveToPoint:CGPointMake(CGRectGetMinX(frame) + 0.90625 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.00000 * CGRectGetHeight(frame)) controlPoint1:CGPointMake(CGRectGetMinX(frame) + 1.00000 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.04219 * CGRectGetHeight(frame)) controlPoint2:CGPointMake(CGRectGetMinX(frame) + 0.95781 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.00000 * CGRectGetHeight(frame))];
        [bezier31Path addLineToPoint:CGPointMake(CGRectGetMinX(frame) + 0.90625 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.00000 * CGRectGetHeight(frame))];
        [bezier31Path closePath];
        bezier31Path.miterLimit = 4;

        [self.checkboxColor setFill];
        [bezier31Path fill];
    }
}

- (void)layoutSubviews {
    [super layoutSubviews];

    CGFloat textLabelOriginX = self.checkboxSideLength + 5.0;
    CGSize textLabelMaxSize = CGSizeMake(CGRectGetWidth(self.bounds) - textLabelOriginX, CGRectGetHeight(self.bounds));
    CGSize textLabelSize = [self.textLabel.text sizeWithFont:self.textLabel.font constrainedToSize:textLabelMaxSize lineBreakMode:self.textLabel.lineBreakMode];
    self.textLabel.frame = CGRectMake(textLabelOriginX, (CGRectGetHeight(self.bounds) - textLabelSize.height) / 2.0, textLabelSize.width, textLabelSize.height);
}

- (void)endTrackingWithTouch:(UITouch *)touch withEvent:(UIEvent *)event {
    CGPoint location = [touch locationInView:self];
    if (CGRectContainsPoint(self.bounds, location)) {
        self.checked = !self.checked;
    }
}

@end
