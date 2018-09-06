//
//  QuitCommand.h
//  StarterGame
//
//  Created by computer science on 3/7/12.
//  Copyright 2012 columbus state university. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Command.h"
@class Player;

@interface QuitCommand : Command 
{

}

-(id)init;
-(BOOL)execute:(Player *)player;

@end
