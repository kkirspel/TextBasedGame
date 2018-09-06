//
//  CommandWords.h
//  StarterGame
//
//  Created by computer science on 3/7/12.
//  Copyright 2012 columbus state university. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Command.h"


@interface CommandWords : NSObject 
{
	NSMutableDictionary *commands;
}

-(id)init;
-(Command *)get:(NSString *)word;

@end
