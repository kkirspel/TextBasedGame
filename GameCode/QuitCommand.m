//
//  QuitCommand.m
//  StarterGame
//
//  Created by computer science on 3/7/12.
//  Copyright 2012 columbus state university. All rights reserved.
//

#import "QuitCommand.h"


@implementation QuitCommand

-(id)init
{
	return [super init];
}

-(BOOL)execute:(Player *)player
{
	BOOL answer = YES;
	if ([self hasSecondWord]) 
	{
		MyLog(@"\n  Just type 'quit'");
		answer = NO;
	}
	return answer;
}

@end
 