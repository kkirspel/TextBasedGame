//
//  BackCommand.h
//  StarterGame
//
//  Created by Student3 on 4/6/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Command.h"
@class Player;

@interface BackCommand : Command 
{

}

-(id)init;
-(BOOL)execute:(Player *)player;

@end
