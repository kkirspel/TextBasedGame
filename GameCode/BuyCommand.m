//
//  BuyCommand.m
//  StarterGame
//
//  Created by Student3 on 4/23/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "BuyCommand.h"
#import "Player.h"
#import "Room.h"

@implementation BuyCommand
-(id)init
{
	return [super init];
}

-(BOOL)execute:(Player *)player
{	
	if([[player currentRoom] shop])
	{
		if ([self hasSecondWord]) 
		{
			id *theItem = [[player currentRoom] viewItemInShop:secondWord];
			if(theItem)
			{
				if([theItem worth] < [player currency])
				{
					if ([theItem weight] < [player remainingWeight]) 
					{
						if([theItem cubicInches] < [player remainingCubicInches]) 
						{
							[player buy:secondWord];
							MyLog(@"  You bought %@", secondWord);								
							if([self hasThirdWord])
							{
								id *theItem2 = [[player currentRoom] viewItemInShop:thirdWord];
								if(theItem2)
								{
									if([theItem2 worth] < [player currency])
									{
										if ([theItem2 weight] < [player remainingWeight]) 
										{
											if([theItem2 cubicInches] < [player remainingCubicInches]) 
											{
												[player buy:thirdWord];
												MyLog(@" and %@.", thirdWord);		
											}
											else 
											{
												MyLog(@"  Your inventory does not have enough space for %@.", thirdWord);	
											}
										}
										else
										{
											MyLog(@"  Your inventory is too heavy with %@ included.", thirdWord);
										}
									}
									else 
									{
										MyLog(@"  You don't have enough currency for %@.", thirdWord);
									}
								}
								else
								{
									MyLog(@"\n  %@ is not available in this shop.", thirdWord);
								}
							}
							else 
							{
								MyLog(@".");
							}

						}
						else 
						{
							MyLog(@"  Your inventory does not have enough space for %@.", secondWord);	
						}
					}
					else
					{
						MyLog(@"  Your inventory is too heavy with %@ included.", secondWord);
					}
				}
				else 
				{
					MyLog(@"  You don't have enough currency for %@.", secondWord);
				}
			}
			else
			{
					MyLog(@"\n  That %@ is not available in this shop.", secondWord);
			}
		}
		else 
		{
			MyLog(@"  Buy what?");
		}
	}
	else
	{
		MyLog(@"  There's not a shop in %@.", [[player currentRoom] tag]);
	}
	return NO;
}

@end
