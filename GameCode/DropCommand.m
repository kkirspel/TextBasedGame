//
//  DropCommand.m
//  StarterGame
//
//  Created by Student3 on 4/21/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "DropCommand.h"
#import "Player.h"
#import "Room.h"

@implementation DropCommand
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
			[player dropAllItems];
		}
		else 
		{
			if ([[player inventory] objectForKey:secondWord])
			{
				[player drop:secondWord];
			}
			else
			{
				MyLog(@"\n  You do not have this item in your inventory.");
			}
		}
	}
	else 
	{
		MyLog(@"\n  Drop what?");
	}
	return NO;
}
@end
