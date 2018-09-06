//
//  RegularLock.h
//  StarterGame
//
//  Created by Student3 on 3/20/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "GameProtocols.h"


@interface RegularLock : NSObject <LockProtocol>
{
	bool locked;
	Key *original, *inserted;
	NSString *requiredKey;
}

@property (retain, nonatomic)NSString *requiredKey;

-(Key *)getOriginalKey;

@end
