//
//  Character.h
//  StarterGame
//
//  Created by Student3 on 4/25/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>
@class Room;


@interface Character : NSObject 
{
	Room *characterCurrentRoom;
	NSString *characterName;
}

@property (retain, nonatomic)Room *characterCurrentRoom;
@property (retain, nonatomic)NSString *characterName;

@end
