//
//  Character.m
//  StarterGame
//
//  Created by Student3 on 4/25/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "Character.h"
#import "Room.h"

@implementation Character
@synthesize characterCurrentRoom;
@synthesize characterName;

-(void)initInRoom:(Room *)room WithName:(NSString *)name
{
	[self setCharacterCurrentRoom:room];
	characterName = name;
}


-(void)walkTo:(NSString *)direction
{
	[self setCharacterCurrentRoom:[[self characterCurrentRoom] getExit:direction]]; 
}

+(void)characterMove
{
	switch (arc4random() % 3)
	{
		case 0:
			if([[self characterCurrentRoom] getExit:@"south"])
			{
				[self walkTo:@"south"];
			}
			else
			{
				if([[self characterCurrentRoom] getExit:@"north"])
				{
					[self walkTo:@"north"];		
				}
				else 
				{
					if([[self characterCurrentRoom] getExit:@"west"])
					{
						[self walkTo:@"west"];
					}
					else 
					{
						if([[self characterCurrentRoom] getExit:@"east"])
						{
							[self walkTo:@"east"];
						}
						else
						{
							MyLog(@"...wait. wtf %@ has done the impossible.", [self characterName]);
						}						
					}
				}
			}
			break;
			
		case 1:
			if([[self characterCurrentRoom] getExit:@"north"])
			{
				[self walkTo:@"south"];
			}
			else
			{
				if([[self characterCurrentRoom] getExit:@"sorth"])
				{
					[self walkTo:@"north"];		
				}
				else 
				{
					if([[self characterCurrentRoom] getExit:@"east"])
					{
						[self walkTo:@"west"];
					}
					else 
					{
						if([[self characterCurrentRoom] getExit:@"west"])
						{
							[self walkTo:@"east"];
						}
						else
						{
							MyLog(@"...wait. wtf %@ has done the impossible.", [self characterName]);
						}						
					}
				}
			}			
			break;
			
		case 2:
			if([[self characterCurrentRoom] getExit:@"east"])
			{
				[self walkTo:@"south"];
			}
			else
			{
				if([[self characterCurrentRoom] getExit:@"sorth"])
				{
					[self walkTo:@"north"];		
				}
				else 
				{
					if([[self characterCurrentRoom] getExit:@"west"])
					{
						[self walkTo:@"west"];
					}
					else 
					{
						if([[self characterCurrentRoom] getExit:@"north"])
						{
							[self walkTo:@"east"];
						}
						else
						{
							MyLog(@"...wait. wtf %@ has done the impossible.", [self characterName]);
						}						
					}
				}
			}			
			break;
			
		case 3:
			if([[self characterCurrentRoom] getExit:@"south"])
			{
				[self walkTo:@"south"];
			}
			else
			{
				if([[self characterCurrentRoom] getExit:@"north"])
				{
					[self walkTo:@"north"];		
				}
				else 
				{
					if([[self characterCurrentRoom] getExit:@"west"])
					{
						[self walkTo:@"west"];
					}
					else 
					{
						if([[self characterCurrentRoom] getExit:@"east"])
						{
							[self walkTo:@"east"];
						}
						else
						{
							MyLog(@"...wait. wtf %@ has done the impossible.", [self characterName]);
						}						
					}
				}
			}		
			break;
			
		default:
			MyLog(@"  ...wait. wtf how'd you get here you hacker??\n");
			break;
	}	
	MyLog(@"  %@ is in %@.", [self characterName], [self currentRoom]);
}
@end
