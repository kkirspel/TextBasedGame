//
//  Key.m
//  StarterGame
//
//  Created by Student3 on 3/22/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "Key.h"


@implementation Key

@synthesize name;
@synthesize weight;
@synthesize cubicInches;
@synthesize worth;

-(id)init
{
	return [self initWithName:@"noname"];
}

-(id)initWithName:(NSString *)theName
{
	self = [super init];

	if (nil != self) 
	{
		name = theName;
		weight = 1;
		cubicInches = 5;
		worth = 20;
	}
	return self;
}

-(void)dealloc
{
	[name release];
	
	[super dealloc];
}
@end
