//
//  CTCheckbox.h
//  CTCheckbox
//
//  Created by 和泉田 領一 on 2013/03/06.
//  Copyright (c) 2013年 CAPH. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface CTCheckbox : UIControl

@property (nonatomic) BOOL checked;
@property (nonatomic, strong) UIColor *checkboxColor;
@property (nonatomic) float checkboxSideLength;
@property (nonatomic, strong) UILabel *textLabel;

- (void)setColor:(UIColor *)color forControlState:(UIControlState)state;

- (void)setBackgroundColor:(UIColor *)backgroundColor forControlState:(UIControlState)state;

-(void)setChecked:(BOOL)checked withEvent:(BOOL)withEvent;

@end
