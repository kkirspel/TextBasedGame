//
//  SellCommand.h
//  StarterGame
//
//  Created by Student3 on 4/23/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Command.h"
@class Player;

@interface SellCommand : Command
{

}

-(id)init;
-(BOOL)execute:(Player *)player;

@end
