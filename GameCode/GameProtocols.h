//
//  GameProtocols.h
//  StarterGame
//
//  Created by Student3 on 3/20/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>
@class Key;

@protocol GameProtocols


@end

@protocol LockProtocol

-(void)lock;
-(void)unlock;
-(bool)isLocked;
-(bool)isUnlocked;
-(bool)canClose;
-(void)willChange;
-(bool)shouldChange:(bool)newValue;
-(void)didChange;
-(void)insertKey:(Key *)aKey;
-(Key *)removeKey;

@end

@protocol ItemProtocol

-(NSString *)name;
-(NSInteger)weight;
-(NSInteger)cubicInches;
-(NSInteger)worth;

@end