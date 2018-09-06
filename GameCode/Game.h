//
//  Game.h
//  StarterGame
//
//  Created by computer science on 3/7/12.
//  Copyright 2012 columbus state university. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Parser.h"
@class Player;
#import "HelperFunctions.h"
@class Room;

@interface Game : NSObject 
{
	Parser *parser;
	Player *player;
	Room *endRoom;
	NSInteger finalScore;
	NSInteger pointsPerKey;
	NSInteger pointsPerBook;
	
}

@property (retain, nonatomic)Parser *parser;
@property (retain, nonatomic)Player *player;
@property (retain, nonatomic)Room *endRoom;
@property (assign, nonatomic)NSInteger finalScore;
@property (assign, nonatomic)NSInteger pointsPerBook;
@property (assign, nonatomic)NSInteger pointsPerKey;
-(id)init;
-(Room *)createWorld;
-(void)play;
-(NSString *)welcome;

@end
