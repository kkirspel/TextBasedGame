//
//  SellCommand.m
//  StarterGame
//
//  Created by Student3 on 4/23/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "SellCommand.h"
#import "Player.h"

@implementation SellCommand

-(id)init
{
	return [super init];
}

-(BOOL)execute:(Player *)player
{	
	if([[player currentRoom] shop])
	{
		if ([self hasSecondWord]) 
		{
			if([player viewItemInInventory:secondWord])
			{
				[player sell:secondWord];
				MyLog(@"  You sold the %@.", secondWord);						
			}
			else
			{
				MyLog(@"  You do not have this item in your inventory.");
			}
		}
		else 
		{
			MyLog(@"  Sell what?");
		}
	}
	else
	{
		MyLog(@"  There's not a shop in %@.", [[player currentRoom] tag]);
	}
	return NO;
}
@end
