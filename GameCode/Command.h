//
//  Command.h
//  StarterGame
//
//  Created by computer science on 3/7/12.
//  Copyright 2012 columbus state university. All rights reserved.
//

#import <Cocoa/Cocoa.h>
@class Player;

@interface Command : NSObject 
{
	NSString *secondWord;
	NSString *thirdWord;
}

@property (retain, nonatomic)NSString *secondWord;
@property (retain, nonatomic)NSString *thirdWord;

-(id)init;
-(BOOL)hasSecondWord;
-(BOOL)execute:(Player *)player;

@end
