//
//  Drink.m
//  StarterGame
//
//  Created by Student3 on 4/23/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "Drink.h"


@implementation Drink

@synthesize name;
@synthesize weight;
@synthesize cubicInches;
@synthesize worth;

-(id)initWithName:(NSString *)theName
{
	self = [super init];
	
	if (nil != self) 
	{
		name = theName;
		weight = 2;
		cubicInches = 15;
		worth = 10;
	}
	return self;
}

-(void)dealloc
{
	[name release];
	
	[super dealloc];
}

@end
