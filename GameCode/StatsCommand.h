//
//  BackpackCommand.h
//  StarterGame
//
//  Created by Student3 on 4/22/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Command.h"
@class Player;

@interface StatsCommand : Command
{
	
}

-(id)init;
-(BOOL)execute:(Player *)player;

@end
