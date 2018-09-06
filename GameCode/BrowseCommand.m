//
//  BrowseCommand.m
//  StarterGame
//
//  Created by Student3 on 4/24/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "BrowseCommand.h"
#import "Player.h"
#import "Room.h"

@implementation BrowseCommand
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
				MyLog(@"  Just type 'browse'.");
		}
		else 
		{
			MyLog(@"%@", [[player currentRoom] getShopItems]);
		}
	}
	else
	{
		MyLog(@"  There's not a shop in %@.", [[player currentRoom] tag]);
	}
	return NO;
}
@end
