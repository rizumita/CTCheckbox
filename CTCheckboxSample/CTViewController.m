//
//  CTViewController.m
//  CTCheckboxSample
//
//  Created by 和泉田 領一 on 2013/03/06.
//  Copyright (c) 2013年 CAPH. All rights reserved.
//

#import "CTViewController.h"
#import "CTCheckbox.h"

@interface CTViewController ()

@property (nonatomic, strong) CTCheckbox *checkbox2;
@property (nonatomic, strong) CTCheckbox *checkbox3;
@end

@implementation CTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.checkbox addTarget:self action:@selector(checkboxDidChange:) forControlEvents:UIControlEventValueChanged];
    self.checkbox.textLabel.text = @"sample text sample text";
    [self.checkbox setColor:[UIColor blackColor] forControlState:UIControlStateNormal];
    [self.checkbox setColor:[UIColor grayColor] forControlState:UIControlStateDisabled];
    [self checkboxDidChange:self.checkbox];

    self.checkbox2 = [[CTCheckbox alloc] initWithFrame:CGRectMake(20.0, 220.0, 280.0, 20.0)];
    self.checkbox2.textLabel.text = @"by initWithFrame:";
    [self.view addSubview:self.checkbox2];

    self.checkbox3 = [[CTCheckbox alloc] initWithFrame:CGRectMake(20.0, 260.0, 280.0, 40.0)];
    self.checkbox3.checkboxSideLength = 40.0;
    self.checkbox3.textLabel.text = @"checkboxSideLength is 40.0";
    [self.view addSubview:self.checkbox3];
}

- (void)checkboxDidChange:(CTCheckbox *)checkbox
{
    if (checkbox.checked) {
        self.label.text = @"Checked";
    } else {
        self.label.text = @"Not checked";
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)blackButtonTapped:(id)sender
{
    self.checkbox.checkboxColor = [UIColor blackColor];
}

- (IBAction)blueButtonTapped:(id)sender
{
    self.checkbox.checkboxColor = [UIColor blueColor];
}

- (IBAction)redButtonTapped:(id)sender
{
    self.checkbox.checkboxColor = [UIColor redColor];
}

- (IBAction)textChanged:(id)sender
{
    self.checkbox.textLabel.text = [(UITextField *)sender text];
}

- (IBAction)normalButtonTapped:(id)sender {
    self.checkbox.enabled = YES;
}

- (IBAction)disableButtonTapped:(id)sender {
    self.checkbox.enabled = NO;
}

#pragma mark - UITextField delegate

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

@end
