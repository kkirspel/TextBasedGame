//
//  TeleportCommand.h
//  StarterGame
//
//  Created by Student3 on 4/24/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Command.h"
@class Player;

@interface TeleportCommand : Command
{

}

-(id)init;
-(BOOL)execute:(Player *)player;

@end
