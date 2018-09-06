//
//  TeleportCommand.m
//  StarterGame
//
//  Created by Student3 on 4/24/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "TeleportCommand.h"
#import "Player.h"

@implementation TeleportCommand

-(id)init
{
	return [super init];
}

-(BOOL)execute:(Player *)player
{
	
	if ([self hasSecondWord]) 
	{
		MyLog(@"  Just type 'teleport'");	
	}	
	else
	{
		[player setCurrentRoom:[player getRandomRoom]];
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
		MyLog(@"  %@", [[player currentRoom] description]);	
	}
	return NO;
	
}@end
