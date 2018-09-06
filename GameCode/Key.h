//
//  Key.h
//  StarterGame
//
//  Created by Student3 on 3/22/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "GameProtocols.h"

@interface Key : NSObject <ItemProtocol>
{
	NSString *name;
	NSInteger weight;
	NSInteger cubicInches;
	NSInteger worth;
}

@property (assign, nonatomic)NSString *name;
@property (assign, nonatomic)NSInteger weight;
@property (assign, nonatomic)NSInteger cubicInches;
@property (assign, nonatomic)NSInteger worth;

-(id)init;
-(id)initWithName:(NSString *)theName;

@end
