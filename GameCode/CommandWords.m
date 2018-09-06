//
//  CommandWords.m
//  StarterGame
//
//  Created by computer science on 3/7/12.
//  Copyright 2012 columbus state university. All rights reserved.
//

#import "CommandWords.h"
#import "GoCommand.h"
#import	"QuitCommand.h"
#import "HelpCommand.h"
#import "BackCommand.h"
#import "PickupCommand.h"
#import "DropCommand.h"
#import "InventoryCommand.h"
#import "UnlockCommand.h"
#import "StatsCommand.h"
#import "BuyCommand.h"
#import "SellCommand.h"
#import "TeleportCommand.h"
#import "BrowseCommand.h"

@implementation CommandWords

-(id)init
{
	self = [super init];
	if (nil != self) 
	{
		commands = [[NSMutableDictionary alloc] initWithCapacity:10];
		[commands setObject:[[[GoCommand alloc] init] autorelease] forKey:@"go"];
		[commands setObject:[[[QuitCommand alloc] init] autorelease] forKey:@"quit"];
		[commands setObject:[[[HelpCommand alloc] initWithWords:self] autorelease] forKey:@"help"];
		[commands setObject:[[[BackCommand alloc] init] autorelease] forKey:@"back"];
		[commands setObject:[[[PickupCommand alloc] init] autorelease] forKey:@"pickup"];
		[commands setObject:[[[DropCommand alloc] init] autorelease] forKey:@"drop"];
		[commands setObject:[[[InventoryCommand alloc] init] autorelease] forKey:@"inventory"];
		[commands setObject:[[[UnlockCommand alloc] init] autorelease] forKey:@"unlock"];
		[commands setObject:[[[StatsCommand alloc] init] autorelease] forKey:@"stats"];
		[commands setObject:[[[BuyCommand alloc] init] autorelease] forKey:@"buy"];
		[commands setObject:[[[SellCommand alloc] init] autorelease] forKey:@"sell"];
		[commands setObject:[[[TeleportCommand alloc] init] autorelease] forKey:@"teleport"];
		[commands setObject:[[[BrowseCommand alloc] init] autorelease] forKey:@"browse"];
	}
	return self;
}

-(Command *)get:(NSString *)word
{
	return [commands objectForKey:word];
}

-(NSString *)description
{
	NSArray *words = [commands allKeys];
	return [words componentsJoinedByString:@", "];
}

-(void)dealloc
{
	[commands release];
	
	[super dealloc];
}

@end
