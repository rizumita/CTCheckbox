//
//  CTViewController.h
//  CTCheckboxSample
//
//  Created by 和泉田 領一 on 2013/03/06.
//  Copyright (c) 2013年 CAPH. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CTCheckbox;

@interface CTViewController : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet CTCheckbox *checkbox;
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UILabel *label;

- (IBAction)blackButtonTapped:(id)sender;
- (IBAction)blueButtonTapped:(id)sender;
- (IBAction)redButtonTapped:(id)sender;
- (IBAction)textChanged:(id)sender;
- (IBAction)normalButtonTapped:(id)sender;
- (IBAction)disableButtonTapped:(id)sender;
@end
