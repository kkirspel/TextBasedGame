//
//  Room.m
//  StarterGame
//
//  Created by computer science on 3/7/12.
//  Copyright 2012 columbus state university. All rights reserved.
//

#import "Game.h"
#import "Room.h"
#import "Player.h"
#import "Door.h"
#import "RegularLock.h"
#import "Book.h"
#import "Key.h"

@implementation Room

@synthesize tag;
@synthesize exits;
@synthesize roomInventory;
@synthesize door;
@synthesize shop;
@synthesize numberOfBooks;
@synthesize numberOfKeys;

-(id)init
{
	return [self initWithTag:@"No Tag"];
}

//initializes a normal room
-(id)initWithTag:(NSString *)newTag
{
	self = [super init];
	
	if (nil != self) 
	{
		[self setTag:newTag];
		door = [[Door alloc] initWithLock:[[[RegularLock alloc] init] autorelease]];
		exits = [[[NSMutableDictionary alloc] init] autorelease];
		roomInventory = [[[NSMutableDictionary alloc] init] autorelease];
		shop = nil;
	}
	return self;
}

//initializes the clocktower (beginning and ending) room
-(id)initEndRoomWithTag:(NSString *)newTag
{
	self = [super init];
	
	if (nil != self) 
	{
		[self setTag:newTag];
		door = [[Door alloc] initWithLock:[[[RegularLock alloc] init] autorelease]];
		exits = [[[NSMutableDictionary alloc] init] autorelease];
		roomInventory = [[[NSMutableDictionary alloc] init] autorelease];
		shop = nil;
	}
	return self;
}

//initializes a room with a shop in it
-(id)initWithShopAndTag:(NSString *)newTag 
{
	self = [super init];
	
	if (nil != self) 
	{
		[self setTag:newTag];
		door = [[Door alloc] initWithLock:[[[RegularLock alloc] init] autorelease]];
		exits = [[[NSMutableDictionary alloc] init] autorelease];
		roomInventory = [[[NSMutableDictionary alloc] init] autorelease];
		shop = [[[NSMutableDictionary alloc] init] autorelease];
	}
	return self;
}

//a boolean method used by the pickup command to determine if any items are in a particular room
-(bool)anyItemsInRoom
{
	bool any = NO;
	
	if([[roomInventory allObjects] count])
	{
		any = YES;
	}
	return any;
}

// -used to 'get all items' in a room. that command doesn't work properly yet-
//getter method that just returns, not removes, the item at index 0 (another method deletes
//this item and so the next time this is called it will pull another item)
-(id)viewNextItemInRoom
{
	return [[roomInventory allObjects] objectAtIndex:0];
}

// -used to 'get all items' in a room. that command doesn't work properly yet-
//getter method that removes and returns the item at index 0 (another method deletes
//this item and so the next time this is called it will pull another item)
-(id)getNextItemInRoom
{
	return [self getItemFromRoom:[[roomInventory allKeys] objectAtIndex:0]];
}

//setter method used to drop items into a room instance
-(void)setItemInRoom:(id<ItemProtocol>)anItem
{	
	[roomInventory setObject:anItem forKey:[anItem name]];
}

//getter method used to pickup (return and remove) items in a room instance
-(id)getItemFromRoom:(NSString *)anItem
{

	id theItem = [roomInventory objectForKey:anItem];
	if (theItem) 
	{
		[theItem retain];
		[roomInventory removeObjectForKey:anItem];
		[theItem autorelease];
	}
	return theItem;
}


//getter method that just returns and doesn't remove a particular item in a room
-(id)viewItemInRoom:(NSString *)anItem
{
	return [roomInventory objectForKey:anItem];
}

//setter method to add exits to a room
-(void)setExit:(NSString *)exit toRoom:(Room *)room
{
	[exits setObject:room forKey:exit];
}

//getter method to return an exit in a room
-(Room *)getExit:(NSString *)exit
{
	return [exits objectForKey:exit];
}

//sets up a string listing all exits in a room
-(NSString *)getExits
{
	NSArray *exitNames = [exits allKeys];
	return [NSString stringWithFormat:@"Exits: %@", [exitNames componentsJoinedByString:@", "]];
}

//sets up a string listing all items in a room
-(NSString *)getItems
{
	NSArray *itemNames = [roomInventory allKeys];
	return [NSString stringWithFormat:@"Items: %@", [itemNames componentsJoinedByString:@", "]];
}

//method that outprints various information about a room. Is used usually when a player moves to another room.
-(NSString *)description
{
	NSString *infoString;
	if(shop == nil) 
	{
		infoString = [NSString stringWithFormat:@"\n  You are in %@.\n  %@\n  %@\n", tag, [self getExits], [self getItems]];
	}
	else
	{
		infoString = [NSString stringWithFormat:@"\n  You are in %@.\n  %@\n  %@\n  There is a shop here.", tag, [self getExits], [self getItems]];
	}
	return infoString;
}

//getter method used with the browse command to view all items in a shop.
-(NSString *)getShopItems
{
	NSArray *shopItemNames = [shop allKeys];
	return [NSString stringWithFormat:@"  Items for sell: %@", [shopItemNames componentsJoinedByString:@", "]];
}

//setter method used to add items to a shop.
-(void)setItemInShop:(id<ItemProtocol>)anItem
{
	[shop setObject:anItem forKey:[anItem name]];
}

//getter method used to return and not remove an item in the shop.
-(id)viewItemInShop:(NSString *)anItem
{
	return [shop objectForKey:anItem];
}

//getter method used with the buy command to return and remove an item in the shop.
-(id)getItemInShop:(NSString *)anItem
{
	id theItem = [shop objectForKey:anItem];
	if (theItem) 
	{
		[theItem retain];
		[shop removeObjectForKey:anItem];
		[theItem autorelease];
	}
	return theItem;
}

-(void)dealloc
{
	[tag release];
	[exits release];
	[roomInventory release];
	[shop release];
	[door release];
	
	[super dealloc];
}

@end
