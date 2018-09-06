//
//  Player.h
//  StarterGame
//
//  Created by computer science on 3/7/12.
//  Copyright 2012 columbus state university. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "HelperFunctions.h"
#import "GameProtocols.h"
@class Room;

@interface Player : NSObject 
{
	Room *currentRoom;
	NSMutableDictionary *previousRooms;
	NSMutableDictionary *inventory;
	NSMutableArray *allRooms;
	NSInteger maxWeight;
	NSInteger maxVolume;
	NSInteger remainingWeight;
	NSInteger remainingCubicInches;
	NSInteger backKey;
	NSInteger currency;
	NSInteger moves;
	NSInteger totalMoves;
	NSMutableDictionary * allCharacters;
	bool *reset;
}

@property (retain, nonatomic)Room *currentRoom;
@property (retain, nonatomic)NSMutableDictionary *previousRooms;
@property (retain, nonatomic)NSMutableDictionary *inventory;
@property (retain, nonatomic)NSMutableArray *allRooms;
@property (assign, nonatomic)NSInteger maxWeight;
@property (assign, nonatomic)NSInteger maxCubicInches;
@property (assign, nonatomic)NSInteger remainingWeight;
@property (assign, nonatomic)NSInteger remainingCubicInches;
@property (assign, nonatomic)NSInteger backKey;
@property (assign, nonatomic)NSInteger currency;
@property (assign, nonatomic)NSInteger moves;
@property (assign, nonatomic)NSInteger totalMoves;
@property (retain, nonatomic)NSMutableDictionary *allCharacters;

-(id)init;
-(id)initWithRoom:(Room *)room;
-(void)setInAllRooms:(Room *)anItem;
-(void)walkTo:(NSString *)direction;
-(void)back;
-(void)unlock:(Room *)targetRoom withKey:(NSString *)targetKey;
-(void)setItemInInventory:(id<ItemProtocol>)anItem;
-(id)getItemFromInventory:(NSString *)anItem;
-(id)viewItemInInventory:(NSString *)anItem;
-(void)drop:(id)theItem;
-(void)pickup:(id)theItem;

@end
