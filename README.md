CTCheckbox
==========

CTCheckbox is a checkbox UI component library for iOS.

![CTCheckbox](http://f.cl.ly/items/3d1f313G0I1z3x0c050P/Image%202013.03.16%209:14:13.png)

Sample
===============

You put UIView on a storyboard and change it's class to CTCheckbox.
UIViewController
```Objective-C
@property (weak, nonatomic) IBOutlet CTCheckbox *checkbox;
```
```Objective-C
[self.checkbox addTarget:self action:@selector(checkboxDidChanged:) forControlEvents:UIControlEventValueChanged];
self.checkbox.textLabel.text = @"Label text";
```

Or create using [[CTCheckbox alloc] initWithFrame:].

License
===============
CTCheckbox is available under the MIT license. See the LICENSE file for more info.
