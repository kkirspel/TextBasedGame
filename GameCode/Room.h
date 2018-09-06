//
//  Room.h
//  StarterGame
//
//  Created by computer science on 3/7/12.
//  Copyright 2012 columbus state university. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "GameProtocols.h"
@class Door;

@interface Room : NSObject 
{
	NSString *tag;
	NSMutableDictionary *exits;
	NSMutableDictionary *roomInventory;
	NSMutableDictionary *shop;
	Door *door;
	NSInteger numberOfBooks;
	NSInteger numberOfKeys;
}

@property (retain, nonatomic)NSString *tag;
@property (retain, nonatomic)NSMutableDictionary *exits;
@property (retain, nonatomic)NSMutableDictionary *roomInventory;
@property (retain, nonatomic)NSMutableDictionary *shop;
@property (retain, nonatomic)Door *door;
@property (assign, nonatomic)NSInteger numberOfBooks;
@property (assign, nonatomic)NSInteger numberOfKeys;

-(id)init;
-(id)initWithTag:(NSString *)newTag;
-(void)setItemInRoom:(id<ItemProtocol>)anItem;
-(id)getItemFromRoom:(NSString *)anItem;
-(id)viewItemInRoom:(NSString *)anItem;
-(void)setExit:(NSString *)exit toRoom:(Room *)room;
-(Room *)getExit:(NSString *)exit;
-(NSString *)getExits;
-(NSString *)getItems;

@end
