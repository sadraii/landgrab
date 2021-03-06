//
//  MJContainerView.m
//  LandGrab!
//
//  Created by Andrew Huss on 2/23/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "MJContainerView.h"
#import "MJBoard.h"
#import "MJViewController.h"

@implementation MJContainerView

@synthesize board = _board;
@synthesize iv = _iv;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
		[self setUserInteractionEnabled:YES];
    }
//	UIImage* image = [UIImage imageNamed:@"board_background.png"];
//	_iv = [[UIImageView alloc] initWithFrame:self.frame];
//	[_iv setImage:image];
//	[_iv setContentMode:UIViewContentModeScaleAspectFit];
//	[self addSubview:_iv];
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
	// Drawing code
	[super drawRect:rect];
	CGContextRef ctx = UIGraphicsGetCurrentContext();
    //	CGContextSetRGBStrokeColor(ctx, 0, 20, 150, 1);
	
    //	CGContextSetStrokeColorWithColor(ctx, [UIColor darkGrayColor].CGColor);
    
    //Values are between 0.0 and 1.0 (originally 0,10,10,10)
	CGContextSetRGBStrokeColor(ctx, 1, 1, 1, 0.2);
	
	CGContextSetLineWidth(ctx, 2);
	CGContextBeginPath(ctx);
	// Draw horizontal lines
	for (int i=0; i<self.bounds.size.width;i+=[MJBoard tileSize]) {
		CGContextMoveToPoint(ctx, 0+i, 0);
		CGContextAddLineToPoint(ctx, 0+i, self.bounds.size.height);
	}
	// Draw verticle lines
	for (int i=0; i<self.bounds.size.height;i+=[MJBoard tileSize]) {
		CGContextMoveToPoint(ctx, 0, 0+i);
		CGContextAddLineToPoint(ctx, self.bounds.size.width, 0+i);
	}
	// top left
	CGContextMoveToPoint(ctx, 0, 0);
	// top right
	CGContextAddLineToPoint(ctx, self.bounds.size.width, 0);
	// bottom right
	CGContextAddLineToPoint(ctx, self.bounds.size.width, self.bounds.size.height);
	// bottom left
	CGContextAddLineToPoint(ctx, 0, self.bounds.size.height);
	CGContextClosePath(ctx);
	CGContextStrokePath(ctx);
}


@end
