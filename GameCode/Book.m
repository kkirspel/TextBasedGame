//
//  Book.m
//  StarterGame
//
//  Created by Student3 on 4/22/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "Book.h"


@implementation Book

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
		weight = 5;
		cubicInches = 25;
		worth = 60;
	}
	return self;
}

-(void)dealloc
{
	[name release];
	
	[super dealloc];
}
@end
