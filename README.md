#AMBCircularButton

Subclass of UIButton to display circular profile-like images. Based on [NZCircularImageView](https://github.com/NZN/NZCircularImageView), and [SDWebImage](https://github.com/rs/SDWebImage). 

<p align='center'>
	<img src='http://s29.postimg.org/jf2lg0mcn/AMBCB.gif' />
</p>

##How to use it

Add ``#import "AMBCircularButton.h"`` to your project and set circular image to your ``AMBCircularButton``s:

```
AMBCircularButton *circularButton = [[AMBCircularButton alloc] init];
NSURL *url = [NSURL URLWithString:@"http://lh3.ggpht.com/_ERXQs5oLNgE/S01Ee_26lsI/AAAAAAAAAlY/1T0Dl4QJiYk/s800/lenaV.jpg"];
[circularButton setCircularImageWithURL:url forState:UIControlStateNormal];
```

##Requirements

iOS 6.0+, ARC and ``Foundation.framework``, ``QuartzCore.framework`` and ``UIKit.framework``.

##Installation

###CocoaPods

Add ``pod 'AMBCircularButton'`` to your ``Podfile``. Run ``pod install``.

###Source code

Make sure you have imported the required frameworks and install [SDWebImage](https://github.com/rs/SDWebImage). Then, download the latest code version and drag&drop to your project the folder ``AMBCircularButton``, copying the files. Import ``AMBCircularButton.h``.

##License

``AMBCircularButton`` is released under [GPLv3](https://www.gnu.org/copyleft/gpl.html) license.
