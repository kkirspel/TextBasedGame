//
//  PickupCommand.h
//  StarterGame
//
//  Created by Student3 on 4/20/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Command.h"
@class Player;

@interface PickupCommand : Command 
{
	
}

-(id)init;
-(BOOL)execute:(Player *)player;

@end
