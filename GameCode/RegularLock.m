//
//  RegularLock.m
//  StarterGame
//
//  Created by Student3 on 3/20/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "RegularLock.h"

@implementation RegularLock

@synthesize requiredKey;

-(id)init
{
	self = [super init];
	if (nil != self)
	{
		locked = NO;
		original = [[[Key alloc] init] autorelease];
		inserted = nil;
	}
	return self;
}

-(Key *)getOriginalKey
{
	return original;
}

-(void)lock
{
	locked = YES;
}

-(void)unlock
{
	locked = NO;
}

-(bool)isLocked
{
	return locked;
}

-(bool)isUnlocked
{
	return !locked;
}

-(bool)canClose
{
	
	return YES;
}

-(bool)shouldChange:(bool)newValue
{
	if (original == inserted)
	{
		return newValue;
	}
	else 
	{
		return locked;
	}
}

-(void)willChange
{
	
}

-(void)didChange
{
	
}

-(void)insertKey:(Key *)aKey
{
	inserted = aKey;
}

-(Key *)removeKey
{
	Key *tempKey = inserted;
	inserted = nil;
	return tempKey;
}

-(void)dealloc
{
	[requiredKey release];
	
	[super dealloc];
}



@end
