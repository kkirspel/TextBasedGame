//
//  Door.h
//  StarterGame
//
//  Created by Student3 on 3/20/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "GameProtocols.h"
@class RegularLock;

@interface Door : NSObject <LockProtocol>
{
	bool open;
	id <LockProtocol> lock;
}

-(id)init;
-(id)initWithLock:(id <LockProtocol>) aLock;
-(void)open;
-(void)close;
-(bool)isOpen;
-(bool)isClosed;

@end
