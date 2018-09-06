//
//  Command.m
//  StarterGame
//
//  Created by computer science on 3/7/12.
//  Copyright 2012 columbus state university. All rights reserved.
//

#import "Command.h"
#import "Player.h"

@implementation Command

@synthesize secondWord;
@synthesize thirdWord;

-(id)init
{
	self = [super init];
	if (nil != self)
	{
		secondWord = nil;
		thirdWord = nil;
	}
	return self;
}

-(BOOL)hasSecondWord
{
	return (secondWord != nil);
}

-(BOOL)hasThirdWord
{
	return (thirdWord != nil);
}

-(BOOL)execute:(Player *)player
{
	return NO;
}

-(void)dealloc
{
	[secondWord release];
	[thirdWord release];
	
	[super dealloc];
}

@end
