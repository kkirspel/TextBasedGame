//
//  HelpCommand.m
//  StarterGame
//
//  Created by computer science on 3/7/12.
//  Copyright 2012 columbus state university. All rights reserved.
//

#import "HelpCommand.h"


@implementation HelpCommand

@synthesize words;

-(id)init
{
	return [self initWithWords:[[[CommandWords alloc] init] autorelease]];
}

-(id)initWithWords:(CommandWords *)newWords
{
	self = [super init];
	if (nil != self) {
		[self setWords:newWords];
	}
	return self;
}

-(BOOL)execute:(Player *)player
{
	MyLog(@"  Your available commands are:\n");
	MyLog(@"  %@", [words description]);
	return NO;
}

-(void)dealloc
{
	[words release];
	
	[super dealloc];
}

@end
