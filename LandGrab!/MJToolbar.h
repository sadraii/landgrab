//
//  MJToolbar.h
//  LandGrab!
//
//  Created by Andrew Huss on 2/23/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MJViewController;
@class MJPlayer;
@class MJPiece;
@class MJTile;

@interface MJToolbar : UIScrollView {
@public
	
@private
	CGFloat offset;
	CGFloat pieceHeight;
	NSUInteger maxX;
}

@property (weak, nonatomic) IBOutlet MJViewController* viewController;
@property (weak, nonatomic) MJPlayer* player;
@property (strong, nonatomic) NSMutableArray* pieces;

- (void) newGame;
- (void) insertPiece:(MJPiece*) piece AtIndex:(NSUInteger)index;
- (void) loadPlayer:(MJPlayer*) player;
- (void) removeAllPieces;

- (void) addTile:(MJTile*)tile;
- (void) addPiece:(MJPiece*)piece;

@end