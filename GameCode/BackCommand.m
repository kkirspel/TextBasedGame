//
//  BackCommand.m
//  StarterGame
//
//  Created by Student3 on 4/6/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "BackCommand.h"
#import "Player.h"
#import "Room.h"

@implementation BackCommand

-(id)init
{
	return [super init];
}

-(BOOL)execute:(Player *)player
{
	
	if ([self hasSecondWord]) 
	{
		MyLog(@"\n  Just type 'back'");	
	}	
	else
	{
		[player back];
	}
	return NO;
}

@end
