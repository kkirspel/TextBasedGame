//
//  HelpCommand.h
//  StarterGame
//
//  Created by computer science on 3/7/12.
//  Copyright 2012 columbus state university. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "CommandWords.h"
#import "HelperFunctions.h"


@interface HelpCommand : Command 
{
	CommandWords *words;
}

@property (retain, nonatomic)CommandWords *words;

-(id)init;
-(id)initWithWords:(CommandWords *)newWords;

@end
