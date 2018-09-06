//
//  Door.m
//  StarterGame
//
//  Created by Student3 on 3/20/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "Door.h"
#import "RegularLock.h"

@implementation Door

-(id)init
{
	return [self initWithLock:nil];
}

-(id)initWithLock:(id <LockProtocol>) aLock
{
	self = [super init];
	if(nil != self) 
	{
		open = NO;
		lock = aLock;
	}
	
	return self;
}

-(void)open
{
	if ([self isUnlocked])
	{
		open = YES;
	}
}

-(void)close
{
	if(lock)
	{
		if ([lock canClose])
		{
			open = NO;
		}
	}
	else 
	{
		open = NO;
	}
}

-(bool)isOpen
{
	return open;
}

-(bool)isClosed
{
	return !open;
}

-(void)lock
{
	if (lock)
	{
		if ([lock shouldChange:YES])
		{
			[lock willChange];
			[lock lock];
			[lock didChange];
		}
	}
}

-(void)unlock
{
	if (lock)
	{
		if ([lock shouldChange:YES])
		{
			[lock willChange];
			[lock unlock];
			[lock didChange];
		}
	}
}

-(bool)isLocked
{
	if (lock)
	{
		return [lock isLocked];
	}
	else
	{
		return NO;
	}
}

-(bool)isUnlocked
{
	if (lock)
	{
		return [lock isUnlocked];
	}
	else
	{
		return YES;
	}
}

-(bool)canClose
{
	if(lock)
	{
		return [lock canClose];
	}
	else 
	{
		return YES;
	}
}

-(NSString *)description
{
	return [NSString stringWithFormat:@"The door is %@ and %@.", [self isOpen]?@"open":@"closed", [self isLocked]?@"locked":@"unlocked"];
}

-(void)willChange
{
	if (lock) 
	{
		[lock willChange];
	}
}

-(bool)shouldChange:(bool)newValue
{
	if (lock) 
	{
		return [lock shouldChange:newValue];
	}
	else 
	{
		return NO;
	}
}

-(void)didChange
{
	if (lock) 
	{
		return [lock didChange];
	}
}
-(void)insertKey:(Key *)aKey
{
	if(lock)
	{
		[lock insertKey:aKey];
	}
}

-(Key *)removeKey
{
	Key *tempKey = nil;
	if (lock)
	{
		tempKey = [lock removeKey];
	}
	return tempKey;
}

-(RegularLock *)getLock
{
	return lock;
}

-(void)dealloc
{
	[lock release];
	
	[super dealloc];
}
@end
