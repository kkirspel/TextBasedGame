//
//  BackpackCommand.m
//  StarterGame
//
//  Created by Student3 on 4/22/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "StatsCommand.h"
#import "Player.h"

@implementation StatsCommand

-(id)init
{
	return [super init];
}

-(BOOL)execute:(Player *)player
{
	
	if ([self hasSecondWord]) 
	{
		MyLog(@"  Just type 'stats'");	
	}	
	else
	{
		NSInteger currentWeight = [player maxWeight] - [player remainingWeight];
		NSInteger currentCubicInches = [player maxCubicInches] - [player remainingCubicInches];
		MyLog(@"  Your backpack is: %i/%i pounds and %i/%i cubic inches full.\n  Your currency: %i", currentWeight, [player maxWeight], currentCubicInches, [player maxCubicInches], [player currency]);
	}
	return NO;
}
@end
