//
//  Parser.m
//  StarterGame
//
//  Created by computer science on 3/7/12.
//  Copyright 2012 columbus state university. All rights reserved.
//

#import "Parser.h"


@implementation Parser

@synthesize commands;

-(id)init
{
	return [self initWithCommands:[[[CommandWords alloc] init] autorelease]];
}

-(id)initWithCommands:(CommandWords *)newCommands
{
	self = [super init];
	if (nil != self) 
	{
		[self setCommands:newCommands];
	}
	return self;
}

-(Command *)getCommand
{
	NSString *inputLine = nil;
	NSString *word1 = nil;
	NSString *word2 = nil;
	NSString *word3 = nil;
	
	MyLog(@"\n> ");
	NSFileHandle *input = [NSFileHandle fileHandleWithStandardInput];
	NSData *data = [input availableData];
	Command *command = nil;
	if (data != nil) 
	{
		inputLine = [[[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding] autorelease] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
		NSArray *words = [inputLine componentsSeparatedByString:@" "];
		if ([words count] > 1) 
		{
			word2 = [words objectAtIndex:1];
			
			if ([words count] > 2) 
			{
				word3 = [words objectAtIndex:2];
			}
		}
		word1 = [words objectAtIndex:0];
		command = [commands get:word1];
		if (command) 
		{
			[command setSecondWord:word2];
			[command setThirdWord:word3];
		}
	}
	return command;
}

-(NSString *)description
{
	return [commands description];
}

-(void)dealloc
{
	[commands release];
	
	[super dealloc];
}

@end
