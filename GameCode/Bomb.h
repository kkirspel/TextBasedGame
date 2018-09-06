//
//  Bomb.h
//  StarterGame
//
//  Created by Student3 on 4/3/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface Bomb : NSObject 
{

}

-(id)init;
-(void)arm;
-(void)disarm;
-(void)explode:(float)delay;
-(void)fuse;


@end
