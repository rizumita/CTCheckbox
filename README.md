CTCheckbox
==========

CTCheckbox is a checkbox UI component library for iOS 5+,

![Screenshot](https://raw.github.com/rizumita/CTCheckbox/master/screenshot.png)

Usage
===============

You put UIView on a storyboard and change it's class to CTCheckbox.
UIViewController
```Objective-C
@property (weak, nonatomic) IBOutlet CTCheckbox *checkbox;
```
```Objective-C
[self.checkbox addTarget:self action:@selector(checkboxDidChange:) forControlEvents:UIControlEventValueChanged];
self.checkbox.textLabel.text = @"Label text";
```
```Objective-C
- (void)checkboxDidChange:(CTCheckbox *)checkbox
{
    NSLog(@"%d", checkbox.checked);
}
```
Or create using initWithFrame:.

License
===============
CTCheckbox is available under the MIT license. See the LICENSE file for more info.
