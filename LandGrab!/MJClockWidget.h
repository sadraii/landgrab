//
//  MJClockWidget.h
//  LandGrab!
//
//  Created by student on 3/14/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MJClockWidget : UIView

@property (strong, nonatomic)NSTimer* clockTimer;
@property (nonatomic)NSInteger secondsLeft; 

- (void) createTimer;
- (void) updateTimer;
- (void) endSequence;

@end