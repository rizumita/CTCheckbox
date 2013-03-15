CTCheckbox
==========

CTCheckbox is a checkbox UI component library for iOS.

Sample
===============

UIViewController
```Objective-C
@property (weak, nonatomic) IBOutlet CTCheckbox *checkbox;
```
```Objective-C
[self.checkbox addTarget:self action:@selector(checkboxDidChanged:) forControlEvents:UIControlEventValueChanged];
self.checkbox.textLabel.text = @"Label text";
```

License
===============
CTCheckbox is available under the MIT license. See the LICENSE file for more info.
