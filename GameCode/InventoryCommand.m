//
//  InventoryCommand.m
//  StarterGame
//
//  Created by Student3 on 4/20/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "InventoryCommand.h"
#import "Player.h"

@implementation InventoryCommand

-(id)init
{
	return [super init];
}

-(BOOL)execute:(Player *)player
{
	
	if ([self hasSecondWord]) 
	{
		MyLog(@"\n  Just type 'inventory'");	
	}	
	else
	{
		MyLog(@"%@", [player viewInventory]);	
	}
	return NO;
}
@end
