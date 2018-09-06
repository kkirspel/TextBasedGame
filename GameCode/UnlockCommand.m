//
//  UnlockCommand.m
//  StarterGame
//
//  Created by Student3 on 4/11/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "UnlockCommand.h"
#import "Player.h"
#import "Room.h"

@implementation UnlockCommand

-(id)init
{
	return [super init];
}

-(BOOL)execute:(Player *)player
{
	if ([self hasSecondWord]) 
	{
		Room *targetRoom = [[player currentRoom] getExit:secondWord];
		
		if ([[targetRoom door] isLocked])
		{
			if ([player viewItemInInventory:[[[targetRoom door] getLock] requiredKey]])
			{
				[player unlock:targetRoom withKey:[[[targetRoom door] getLock] requiredKey]];
				MyLog(@"\n  You unlocked %@.", [targetRoom tag]);
			}
			else
			{
				MyLog(@"\n  You do not have the correct key to unlock %@.", [targetRoom tag]);
			}
		}
		else 
		{
			MyLog(@"\n  %@ is not locked.", [targetRoom tag]);
		}

	}
	else 
	{
		MyLog(@"\n  Unlock room in what direction?");
	}
	return NO;
}

@end
