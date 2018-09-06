//
//  GoCommand.m
//  StarterGame
//
//  Created by computer science on 3/7/12.
//  Copyright 2012 columbus state university. All rights reserved.
//

#import "GoCommand.h"
#import "Room.h"
#import "Player.h"

@implementation GoCommand

-(id)init
{
	return [super init];
}

-(BOOL)execute:(Player *)player
{
	Room *nextRoom = [[player currentRoom] getExit:secondWord];
    Door *theDoor = [nextRoom door];	
	
	if ([self hasSecondWord]) 
	{
		if (![theDoor isLocked])
		{
			[player walkTo:secondWord];
		}
		else
		{
			MyLog(@"\n  You cannot proceed; %@ is %@.", [nextRoom tag], [theDoor isLocked]?@"locked":@"unlocked");
		}
	}
	else 
	{
		MyLog(@"\n  Go where?");
	}
	return NO;
}

@end
