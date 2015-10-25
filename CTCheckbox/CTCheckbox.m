//
//  CTCheckbox.m
//  CTCheckbox
//
//  Created by 和泉田 領一 on 2013/03/06.
//  Copyright (c) 2013年 CAPH. All rights reserved.
//

#import "CTCheckbox.h"

static const float CTCheckboxDefaultSideLength = 20.0;

@interface CTCheckbox ()
@property (nonatomic, strong) NSMutableDictionary *colorDictionary;
@property (nonatomic, strong) NSMutableDictionary *backgroundColorDictionary;
@end

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
    self.colorDictionary = [NSMutableDictionary dictionary];
    self.backgroundColorDictionary = [NSMutableDictionary dictionary];

    self.checkboxSideLength = CTCheckboxDefaultSideLength;
    self.checkboxColor = [UIColor blackColor];
    self.backgroundColor = [UIColor clearColor];
    self.textLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    self.textLabel.backgroundColor = [UIColor clearColor];
    [self addSubview:self.textLabel];

    [self addObserver:self forKeyPath:@"enabled" options:NSKeyValueObservingOptionNew context:nil];
    [self addObserver:self forKeyPath:@"selected" options:NSKeyValueObservingOptionNew context:nil];
    [self addObserver:self forKeyPath:@"highlighted" options:NSKeyValueObservingOptionNew context:nil];
}

- (void)dealloc
{
    [self removeObserver:self forKeyPath:@"enabled"];
    [self removeObserver:self forKeyPath:@"selected"];
    [self removeObserver:self forKeyPath:@"highlighted"];
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change
                       context:(void *)context
{
    if ([keyPath isEqualToString:@"enabled"] || [keyPath isEqualToString:@"selected"] || [keyPath isEqualToString:@"highlighted"]) {
        [self changeColorForState:self.state];
        [self changeBackgroundColorForState:self.state];
    } else {
        [super observeValueForKeyPath:keyPath ofObject:object change:change context:context];
    }
}

- (void)changeColorForState:(UIControlState)state
{
    UIColor *color;

    switch (state) {
      case UIControlStateNormal:
        color = self.colorDictionary[@(UIControlStateNormal)];
        break;
      case UIControlStateSelected:
        color = self.colorDictionary[@(UIControlStateSelected)];
        break;
      case UIControlStateDisabled:
        color = self.colorDictionary[@(UIControlStateDisabled)];
        break;
      default:
        break;
    }
  
    if (!color) {
        color = [UIColor blackColor];
    }

    self.checkboxColor = color;
    self.textLabel.textColor = color;
}

- (void)changeBackgroundColorForState:(UIControlState)state
{
    UIColor *color;

    switch (state) {
      case UIControlStateNormal:
        color = self.backgroundColorDictionary[@(UIControlStateNormal)];
        break;
      case UIControlStateSelected:
        color = self.backgroundColorDictionary[@(UIControlStateSelected)];
        break;
      case UIControlStateDisabled:
        color = self.backgroundColorDictionary[@(UIControlStateDisabled)];
        break;
      default:
        break;
    }
  
    if (!color) {
        color = [UIColor clearColor];
    }

    self.backgroundColor = color;
}

- (void)setChecked:(BOOL)checked
{
    [self setChecked:checked withEvent:YES];
}
-(void)setChecked:(BOOL)checked withEvent:(BOOL)withEvent
{
    _checked = checked;
    
    [self setNeedsDisplay];
    
    if(withEvent)
        [self sendActionsForControlEvents:UIControlEventValueChanged];
}

- (void)setCheckboxColor:(UIColor *)checkboxColor
{
    _checkboxColor = checkboxColor;
    [self setNeedsDisplay];
}


- (void)setColor:(UIColor *)color forControlState:(UIControlState)state
{
  switch (state) {
      case UIControlStateNormal:
        self.colorDictionary[@(UIControlStateNormal)] = color;
        break;
      case UIControlStateSelected:
        self.colorDictionary[@(UIControlStateSelected)] = color;
        break;
      case UIControlStateDisabled:
        self.colorDictionary[@(UIControlStateDisabled)] = color;
        break;
      default:
        break;
    }
  
    [self changeColorForState:self.state];
}

- (void)setBackgroundColor:(UIColor *)backgroundColor forControlState:(UIControlState)state
{
    switch (state) {
      case UIControlStateNormal:
        self.backgroundColorDictionary[@(UIControlStateNormal)] = backgroundColor;
        break;
      case UIControlStateSelected:
        self.backgroundColorDictionary[@(UIControlStateSelected)] = backgroundColor;
        break;
      case UIControlStateDisabled:
        self.backgroundColorDictionary[@(UIControlStateDisabled)] = backgroundColor;
        break;
      default:
        break;
    }
  
  
    [self changeBackgroundColorForState:self.state];
}

- (void)drawRect:(CGRect)rect
{
    CGRect frame = CGRectIntegral(CGRectMake(0, (rect.size.height - self.checkboxSideLength) / 2.0, self.checkboxSideLength, self.checkboxSideLength));

    if (self.checked) {
        UIBezierPath *bezierPath = [UIBezierPath bezierPath];

        [bezierPath moveToPoint:CGPointMake(CGRectGetMinX(frame) + 0.75000 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.21875 * CGRectGetHeight(frame))];
        [bezierPath addLineToPoint:CGPointMake(CGRectGetMinX(frame) + 0.40000 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.52500 * CGRectGetHeight(frame))];
        [bezierPath addLineToPoint:CGPointMake(CGRectGetMinX(frame) + 0.28125 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.37500 * CGRectGetHeight(frame))];
        [bezierPath addLineToPoint:CGPointMake(CGRectGetMinX(frame) + 0.17500 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.47500 * CGRectGetHeight(frame))];
        [bezierPath addLineToPoint:CGPointMake(CGRectGetMinX(frame) + 0.40000 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.75000 * CGRectGetHeight(frame))];
        [bezierPath addLineToPoint:CGPointMake(CGRectGetMinX(frame) + 0.81250 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.28125 * CGRectGetHeight(frame))];
        [bezierPath addLineToPoint:CGPointMake(CGRectGetMinX(frame) + 0.75000 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.21875 * CGRectGetHeight(frame))];
        [bezierPath closePath];

        [self.checkboxColor setFill];
        [bezierPath fill];
    }

    UIBezierPath *roundedRectanglePath = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(CGRectGetMinX(frame) + floor(CGRectGetWidth(frame) * 0.05000 + 0.5), CGRectGetMinY(frame) + floor(CGRectGetHeight(frame) * 0.05000 + 0.5), floor(CGRectGetWidth(frame) * 0.95000 + 0.5) - floor(CGRectGetWidth(frame) * 0.05000 + 0.5), floor(CGRectGetHeight(frame) * 0.95000 + 0.5) - floor(CGRectGetHeight(frame) * 0.05000 + 0.5)) cornerRadius:4];
    roundedRectanglePath.lineWidth = 2 * self.checkboxSideLength / CTCheckboxDefaultSideLength;
    [self.checkboxColor setStroke];
    [roundedRectanglePath stroke];
}

- (void)layoutSubviews
{
    [super layoutSubviews];

    CGFloat textLabelOriginX = self.checkboxSideLength + 5.0;
    CGSize textLabelMaxSize = CGSizeMake(CGRectGetWidth(self.bounds) - textLabelOriginX, CGRectGetHeight(self.bounds));

    CGRect r = [self.textLabel.text boundingRectWithSize:textLabelMaxSize options:(NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading) attributes:@{NSFontAttributeName:self.textLabel.font} context:nil];
  
    CGSize textLabelSize = CGSizeMake(r.size.width, r.size.height);
  
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
