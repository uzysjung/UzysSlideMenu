UzysSlideMenu
================

Slide Dropdown Menu

![Screenshot](https://github.com/uzysjung/UzysSlideMenu/raw/master/UzysSlideMenu.gif)

**UzysSlideMenu features:**

* It's very simple structure.
* Very Easy to customize menu view , you can use interface builder.  
* Support Both ARC and non-ARC Project

## Installation
Copy over the files libary folder to your project folder

## Usage

Import header.

``` objective-c
#import "UzysSlideMenu.h"
```

### Initialize
####1. make menu Item

``` objective-c
UzysSMMenuItem *item0 = [[UzysSMMenuItem alloc] initWithTitle:@"UzysSlide Menu" image:[UIImage imageNamed:@"a0.png"] action:^(UzysSMMenuItem *item) {
    NSLog(@"Item: %@", item);
}];
item0.tag = 0;
```
####2. make UzysSlideMenu
``` objective-c
self.uzysSMenu = [[UzysSlideMenu alloc] initWithItems:@[item0,item1,item2]];
[self.view addSubview:self.uzysSMenu];
```

## Contact

 - [Uzys.net](http://uzys.net)

## License

 - See [LICENSE](https://github.com/uzysjung/UzysSlideMenu/blob/master/MIT-LICENSE.txt).
