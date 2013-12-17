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
@end

@implementation CTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.checkbox addTarget:self action:@selector(checkboxDidChanged:) forControlEvents:UIControlEventValueChanged];
    self.checkbox.textLabel.text = @"sample text sample text";
    [self checkboxDidChanged:self.checkbox];

    self.checkbox2 = [[CTCheckbox alloc] initWithFrame:CGRectMake(20.0, 200.0, 280.0, 20.0)];
    self.checkbox2.textLabel.text= @"by initWithFrame:";
    [self.view addSubview:self.checkbox2];
}

- (void)checkboxDidChanged:(CTCheckbox *)checkbox {
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

- (IBAction)blackButtonTapped:(id)sender {
    self.checkbox.checkboxColor=[UIColor blackColor];
    [self.checkbox setNeedsDisplay];
}

- (IBAction)blueButtonTapped:(id)sender {
    self.checkbox.checkboxColor=[UIColor blueColor];
    [self.checkbox setNeedsDisplay];
}

- (IBAction)redButtonTapped:(id)sender {
    self.checkbox.checkboxColor=[UIColor redColor];
    [self.checkbox setNeedsDisplay];
}

- (IBAction)textChanged:(id)sender {
    self.checkbox.textLabel.text= [(UITextField *)sender text];
}

@end
