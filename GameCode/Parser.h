//
//  Parser.h
//  StarterGame
//
//  Created by computer science on 3/7/12.
//  Copyright 2012 columbus state university. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "CommandWords.h"
#import "HelperFunctions.h"


@interface Parser : NSObject 
{
	CommandWords *commands;
}

@property (retain, nonatomic)CommandWords *commands;

-(id)init;
-(id)initWithCommands:(CommandWords *)newCommands;
-(Command *)getCommand;

@end
