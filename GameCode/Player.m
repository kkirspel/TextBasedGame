//
//  Player.m
//  StarterGame
//
//  Created by computer science on 3/7/12.
//  Copyright 2012 columbus state university. All rights reserved.
//

#import "Player.h"
#import "Character.h"
#import "HelperFunctions.h"
#import "Room.h"
#import "Game.h"
#import "Key.h"
#import "Book.h"
#import "Drink.h"
#include <stdlib.h>

@implementation Player

@synthesize currentRoom;
@synthesize previousRooms;
@synthesize inventory;
@synthesize allRooms;
@synthesize maxWeight;
@synthesize maxCubicInches;
@synthesize remainingWeight;
@synthesize remainingCubicInches;
@synthesize backKey;
@synthesize currency;
@synthesize moves;
@synthesize totalMoves;
@synthesize allCharacters;

-(id)init
{
	return [self initWithRoom:nil];
}

//initializes the player into a room
-(id)initWithRoom:(Room *)room
{
	self = [super init];
	if (nil != self) 
	{
		[self setCurrentRoom:room];
		allCharacters = [[[NSMutableDictionary alloc] init] autorelease];
		previousRooms = [[[NSMutableDictionary alloc] init] autorelease];
		inventory = [[[NSMutableDictionary alloc] init] autorelease];
		allRooms = [[[NSMutableArray alloc] init] autorelease];
		currency = 100;
		maxWeight = 40;
		maxCubicInches = 200;
		remainingWeight = maxWeight;
		remainingCubicInches = maxCubicInches;
		totalMoves = 0;
		moves = 0;
		reset = NO;
	}
	return self;
}

//method used to go to another room. has a chance to randomly teleport the player with a percentage that 
//increases the more times they move. also helps keep track of the back command by clearing past rooms if
//the player moves forward again before going 'back' to those previous rooms. 
-(void)walkTo:(NSString *)direction
{
	
	Room *nextRoom = [currentRoom getExit:direction];
	if (nextRoom) 
	{
		if (moves > arc4random() % 60) 
		{
			[self setCurrentRoom:[self getRandomRoom]];	
			moves = 0;
			
			[previousRooms removeAllObjects];
			backKey = 0;
			reset = NO;
			
			switch (arc4random() % 2)
			{
				case 0:
					MyLog(@"  Your BBF Jill sent you an angry text and you\n  raged across campus for an indeterminate amount of time.\n");
					break;
				case 1:
					MyLog(@"  Final grades were just posted. You have no idea\n  how long you walked around the campus, rethinking your life.\n");
					break;
				default:
					MyLog(@"  ...wait. wtf how'd you get here you hacker??\n");
					break;
			}
			MyLog(@"  %@", [[self currentRoom] description]);	
		}
		else 
		{
			if(reset)
			{
				[previousRooms removeAllObjects];
				backKey = 0;
				reset = NO;
			}
			[previousRooms setObject:currentRoom forKey:[[NSNumber numberWithInt:backKey] stringValue]];
			backKey++;
		
			[self setCurrentRoom:nextRoom];
			moves++;
			totalMoves++;
			MyLog(@"  %@", nextRoom);
		}
	}
	else 
	{
		MyLog(@"\n  %@ is not a valid direction.", direction);
	}
}

//method used by the back command to revisit a previous room. pushs previous rooms into a 'stack' of sorts
//i.e. first one in, last one out.
-(void)back
{
	Room *lastRoom;
	
	if([previousRooms count] > 0)
	{
		backKey--;
		lastRoom = [previousRooms objectForKey:[[NSNumber numberWithInt:backKey] stringValue]];
	
		if (lastRoom)
		{
			[self setCurrentRoom:lastRoom];
			moves++;
			totalMoves++;
			MyLog(@"  %@", lastRoom);
			reset = YES;
		}
		else
		{
			MyLog(@"  You cannot retrace your steps any further.");	
		}
	}
	else 
	{
		MyLog(@"  You haven't went anywhere yet.");
	}
}

//setter method to drop items into the player's inventory.
-(void)setItemInInventory:(id<ItemProtocol>)anItem
{
	[inventory setObject:anItem forKey:[anItem name]];
}

//getter method to pickup (return and remove) items from the player's inventory.
-(id)getItemFromInventory:(NSString *)anItem
{
	id theItem = [inventory objectForKey:anItem];
	if (theItem) 
	{
		[theItem retain];
		[inventory removeObjectForKey:anItem];
		[theItem autorelease];
	}
	return theItem;
}

//getting method to return but not remove an item in the player's inventory.
-(id)viewItemInInventory:(NSString *)anItem
{
	return [inventory objectForKey:anItem];
}

//boolean method to check if an item weighs too much to be picked up.
-(bool)canPickupItemWeight:(id)anItem
{
	bool pickUp = NO;
	
	if ([[currentRoom viewItemInRoom:anItem] weight] < remainingWeight)
	{
		pickUp = YES;
	}
	return pickUp;
}

//boolean method to check if an item's volume is too much to ne picked up.
-(bool)canPickupItemCubicInches:(id)anItem
{
	bool pickUp = NO;
	
	if ([[currentRoom viewItemInRoom:anItem] cubicInches] < remainingCubicInches)
	{
		pickUp = YES;
	}
	return pickUp;
}

// -used to 'pickup all items' from a room. that command doesn't work properly yet-
//getter method to drop the next item into a room. the item is later removed so when
//the method is called again a new item is returned.
//adjusts player's current weight and volume.
-(void)pickupNextItem
{
	[self setRemainingWeight:remainingWeight - [[currentRoom getNextItemInRoom] weight]];
	[self setRemainingCubicInches:remainingCubicInches - [[currentRoom getNextItemInRoom] cubicInches]];
	[self setItemInInventory:[currentRoom getNextItemInRoom]];
}

//method using the room's get method and the player's set method to pickup an item from the room.
//adjusts player's current weight and volume.
-(void)pickup:(id)anItem
{
	if([self canPickupItemWeight:anItem])
	{ 
		if([self canPickupItemCubicInches:anItem])
		{
			[self setRemainingWeight:remainingWeight - [[currentRoom viewItemInRoom:anItem] weight]];
			[self setRemainingCubicInches:remainingCubicInches - [[currentRoom viewItemInRoom:anItem] cubicInches]];			
			id<ItemProtocol> *theItem = [currentRoom getItemFromRoom:anItem];
			[self setItemInInventory:theItem];
			MyLog(@"  %@ has been picked up.", [theItem name]);
		}
		else 
		{
			MyLog(@"  Your inventory does not have enough space for this item.");		
		}
	}
	else
	{
		MyLog(@"  Your inventory is too heavy with this item included.");
	}
}

//method using the player's get method and the room's set method to pickup an item from the room.
//adjusts player's current weight and volume.
-(void)drop:(id)anItem
{
	[self setRemainingWeight:remainingWeight + [[self viewItemInInventory:anItem] weight]];
	[self setRemainingCubicInches:remainingCubicInches + [[self viewItemInInventory:anItem] cubicInches]];
	id<ItemProtocol> *theItem = [self getItemFromInventory:anItem];
	[currentRoom setItemInRoom:theItem];
	MyLog(@"  %@ has been dropped.", [theItem name]);
}

// -used to 'drop all items' into a room. that command doesn't work properly yet-
//drops an item at a time into a room .
//suppose to adjust player's current weight and volume properly.
-(void)dropAllItems
{
	while([self anyItemsInInventory])
	{
		[self setRemainingWeight:remainingWeight + [[self viewNextItemInInventory] weight]];
		[self setRemainingCubicInches:remainingCubicInches + [[self viewNextItemInInventory] cubicInches]];
		[currentRoom setItemInRoom:[self getNextItemInInventory]];
	}
	MyLog(@"  You have dropped all items.");
}

// -used to 'drop all items' into a room. that command doesn't work properly yet-
//used by the dropAllItems method to get a new object everytime the method is called. another method deletes the actual
//item so a new item will be returned everytime (if there are more items).
-(id<ItemProtocol>)getNextItemInInventory
{
	return [self getItemFromInventory:[[inventory allObjects] objectAtIndex:0]];
}

// -used to 'drop all items' into a room. that command doesn't work properly yet-
//views the next item inventory. used to check whether another item is iN the player's
//inventory before calling getNextItemInInventory.
-(id)viewNextItemInInventory
{
	return [[inventory allObjects] objectAtIndex:0];
}

//used by the inventory command to view all items the player currently has.
-(NSString *)viewInventory
{
	return [NSString stringWithFormat:@"  Your items: %@", [[inventory allKeys] componentsJoinedByString:@", "]];
}

//boolean method to check if any items are in the player's inventory.
-(bool)anyItemsInInventory
{
	bool any = NO;
	
	if([[inventory allObjects] count])
	{
		any = YES;
	}
	return any;
}

//method used by the unlock command to unlock a particular room with a particular key in the player's inventory.
//takes key from inventory when used and adjusts player's weight and volume.
-(void)unlock:(Room *)targetRoom withKey:(NSString *)targetKey
{
	[self setRemainingCubicInches:remainingCubicInches + [[inventory objectForKey:targetKey] cubicInches]];
	[self setRemainingWeight:remainingWeight + [[inventory objectForKey:targetKey] weight]];
	[[targetRoom door] insertKey:[self getItemFromInventory:targetKey]];
	[[targetRoom door] unlock];
	[[targetRoom door] removeKey];
}

//method used by the buy command to purchase an item from a shop.
//adjusts the player's weight, volume, and currency and removes the item from the shop and puts it in the player's inventory.
-(void)buy:(NSString *)anItem
{
	[self setRemainingCubicInches:remainingCubicInches - [[[currentRoom shop] objectForKey:anItem] cubicInches]];
	[self setRemainingWeight:remainingWeight - [[[currentRoom shop] objectForKey:anItem] weight]];
	[self setCurrency:currency - [[[currentRoom shop] objectForKey:anItem] worth]];
	[self setItemInInventory:[currentRoom getItemInShop:anItem]];
}

//method used by the sell command to sell an item to a shop.
//adjusts the player's weight, volume, and currency and removes the item from the player and puts it in the shop's inventory.
//selling price is half the buying price.
-(void)sell:(NSString *)anItem
{
	[self setRemainingCubicInches:remainingCubicInches + [[inventory objectForKey:anItem] cubicInches]];
	[self setRemainingWeight:remainingWeight + [[inventory objectForKey:anItem] weight]];
	[self setCurrency:currency + ([[inventory objectForKey:anItem] worth] / 2)];
	[currentRoom setItemInShop:[self getItemFromInventory:anItem]];
}

//method used to keep track of all rooms created by adding them to a mutable array. for use with the teleport command.
-(void)setInAllRooms:(Room *)anItem
{
	[allRooms addObject:anItem];
}

//method that returns a room at a given index from the allRooms array. used for the teleport command.
-(id)viewRoomInAllRooms:(NSInteger)aNumber
{
	return [allRooms objectAtIndex:aNumber];
}

//gets a random number and passes it to viewRoomInAllRooms to get a random room. used by the teleport command.
-(Room *)getRandomRoom
{
	
	return [self viewRoomInAllRooms:arc4random() % [allRooms count]];
}

-(void)dealloc
{
	[currentRoom release];
	[previousRooms release];
	[inventory release];
	[allRooms release];
	
	[super dealloc];
}

@end
