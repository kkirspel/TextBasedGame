//
//  PickupCommand.m
//  StarterGame
//
//  Created by Student3 on 4/20/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "PickupCommand.h"
#import "Player.h"
#import "Room.h"

@implementation PickupCommand

-(id)init
{
	return [super init];
}

-(BOOL)execute:(Player *)player
{
	if ([self hasSecondWord]) 
	{
		if([secondWord isEqualToString:@"all"])
		{
			bool tooMuchWeight = NO;
			bool notEnoughSpace = NO;
			
			while ([[player currentRoom] anyItemsInRoom] && !tooMuchWeight && !notEnoughSpace)
			{
				if([player canPickupItemWeight:[[player currentRoom]viewNextItemInRoom]])
				{
					if([player canPickupItemCubicInches:[[player currentRoom]viewNextItemInRoom]])
					{
						[player pickupNextItem];
					}
					else
					{
						notEnoughSpace = YES;
					}
				}
				else 
				{
					tooMuchWeight = YES;
				}
			}
			if (!tooMuchWeight && !notEnoughSpace)
			{
				MyLog(@"\n  You picked up all items in %@.", [[player currentRoom] tag]);
			}
			else 
			{
				if (tooMuchWeight)
				{
					MyLog(@"\n  You picked up some items but your pack\n  weighs too much for anymore right now.");
				}
				if (notEnoughSpace)
				{
					MyLog(@"\n  You picked up some items but your pack\n  is too full for anymore right now.");
				}
			}
		}
		else
		{
			if ([[player currentRoom] viewItemInRoom:secondWord])
			{
				[player pickup:secondWord];
			}
			else
			{
				MyLog(@"\n  This item is not in %@.", [[player currentRoom] tag]);
			}
		}
	}
	else 
	{
		MyLog(@"\n  Pickup what?");
	}
	return NO;
}
@end
