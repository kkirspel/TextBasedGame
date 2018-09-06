//
//  Game.m
//  StarterGame
//
//  Created by computer science on 3/7/12.
//  Copyright 2012 columbus state university. All rights reserved.
//

#import "Game.h"
#import "Room.h"
#import "Door.h"
#import "Key.h"
#import "Book.h"
#import "Drink.h"
#import "Food.h"
#import "RegularLock.h"
#import "Character.h"
#import "Player.h"

@implementation Game

@synthesize parser;
@synthesize player;
@synthesize endRoom;
@synthesize finalScore;
@synthesize pointsPerKey;
@synthesize pointsPerBook;

//+(Game *)sharedInstance
//{
//	static Game *theInstance = nil;
//	if(!theInstance){
//		theInstance = [[[self class] alloc] init];
//		[theInstance setEntrance:[theInstance createWorld]];
//		[theInstance registerForNotifications];
//	}
//	return theInstance;	
//}

-(id)init
{
	self = [super init];
	if (nil != self) 
	{
		[self setParser:[[[Parser alloc] init] autorelease]];
		[self setPlayer:[[[Player alloc] init] autorelease]];
		finalScore = 0;
		pointsPerKey = 25;
		pointsPerBook = 130;
		[player setCurrentRoom:[self createWorld]];
		
	}
	return self;
}

-(Room *)createWorld
{
	Room *B1, *C1, *G1, *K1, *L1, *B2, *C2, *D2, *E2, *F2, *G2, *H2, *I2, *J2, *K2, *L2,
	*B3, *C3, *D3, *E3, *F3, *G3, *H3, *I3, *J3, *K3, *L3, *B4, *C4, *D4, *E4, *F4, *G4,
	*H4, *I4, *J4, *K4, *L4, *B5, *C5, *D5, *E5, *F5, *G5, *H5, *I5, *J5, *K5, *L5, *B6,
	*C6, *D6, *E6, *F6, *G6, *H6, *I6, *J6, *K6, *L6, *B7, *C7, *D7, *E7, *F7, *G7, *H7,
	*I7, *J7, *K7, *A8, *B8, *C8, *D8, *E8, *F8, *G8, *H8, *I8, *J8, *K8, *L8, *M8, *A9,
	*B9, *C9, *D9, *E9, *F9, *G9, *H9, *I9, *J9, *K9, *L9, *M9, *A10, *B10, *C10, *D10,
	*G10, *H10, *I10, *J10, *K10, *L10, *M10, *A11, *B11, *C11, *D11, *G11, *H11, *I11, 
	*J11, *K11, *L11, *M11, *G12, *I12, *J12, *K12, *L12, *M12, *I13, *J13, *K13, *L13;	
	

	B1 = [[[Room alloc] initWithTag:@"Cunningham Parking Lot (B1)"] autorelease];
	[player setInAllRooms:B1];
	C1 = [[[Room alloc] initWithTag:@"Cunningham Center (C1)"] autorelease];
	[player setInAllRooms:C1];
	[[[C1 door] getLock] setRequiredKey:@"C1Key"];
	Key *C1Key = [[[[C1 door] getLock] getOriginalKey] autorelease];
	[C1Key setName:@"C1Key"];
	[[C1 door] insertKey:C1Key];
	[[C1 door] lock];
	[[C1 door] removeKey];
	G1 = [[[Room alloc] initWithTag:@"Lumpkin Center (G1)"] autorelease];	
	[player setInAllRooms:G1];
	[[[G1 door] getLock] setRequiredKey:@"G1Key"];
	Key *G1Key = [[[[G1 door] getLock] getOriginalKey] autorelease];
	[G1Key setName:@"G1Key"];
	[[G1 door] insertKey:G1Key];
	[[G1 door] lock];
	[[G1 door] removeKey];
	K1 = [[[Room alloc] initWithTag:@"Parking Deck (K1)"] autorelease];
	[player setInAllRooms:K1];
	L1 = [[[Room alloc] initWithTag:@"Parking Deck (L1)"] autorelease];
	[player setInAllRooms:L1];
	
	B2 = [[[Room alloc] initWithTag:@"Cunningham Parking Lot (B2)"] autorelease];
	[player setInAllRooms:B2];
	C2 = [[[Room alloc] initWithTag:@"Cunningham Parking Lot (C2)"] autorelease];
	[player setInAllRooms:C2];
	D2 = [[[Room alloc] initWithTag:@"Softball Field (D2)"] autorelease];
	[player setInAllRooms:D2];
	E2 = [[[Room alloc] initWithTag:@"Cougar Ct Road (E2)"] autorelease];
	[player setInAllRooms:E2];
	F2 = [[[Room alloc] initWithTag:@"Cougar Way (F2)"] autorelease];
	[player setInAllRooms:F2];
	G2 = [[[Room alloc] initWithTag:@"Cougar Way (G2)"] autorelease];	
	[player setInAllRooms:G2];
	H2 = [[[Room alloc] initWithTag:@"Cougar Way (H2)"] autorelease];
	[player setInAllRooms:H2];
	I2 = [[[Room alloc] initWithTag:@"Cougar Way (I2)"] autorelease];
	[player setInAllRooms:I2];
	J2 = [[[Room alloc] initWithTag:@"Cougar Way (J2)"] autorelease];
	[player setInAllRooms:J2];
	K2 = [[[Room alloc] initWithTag:@"Cougar Way (K2)"] autorelease];
	[player setInAllRooms:K2];
	L2 = [[[Room alloc] initWithTag:@"Cougar Way (L2)"] autorelease];
	[player setInAllRooms:L2];
	
	B3 = [[[Room alloc] initWithTag:@"Service Road (B3)"] autorelease];	
	[player setInAllRooms:B3];
	C3 = [[[Room alloc] initWithTag:@"Lawn (C3)"] autorelease];
	[player setInAllRooms:C3];
	D3 = [[[Room alloc] initWithTag:@"Baseball Field (D3)"] autorelease];
	[player setInAllRooms:D3];
	E3 = [[[Room alloc] initWithTag:@"Cougar Ct Road (E3)"] autorelease];
	[player setInAllRooms:E3];
	F3 = [[[Room alloc] initWithTag:@"Lawn (F3)"] autorelease];
	[player setInAllRooms:F3];
	G3 = [[[Room alloc] initWithTag:@"Rec Center (G3)"] autorelease];
	[player setInAllRooms:G3];
	[[[G3 door] getLock] setRequiredKey:@"G3Key"];
	Key *G3Key = [[[[G3 door] getLock] getOriginalKey] autorelease];
	[G3Key setName:@"G3Key"];
	[[G3 door] insertKey:G3Key];
	[[G3 door] lock];
	[[G3 door] removeKey];
	H3 = [[[Room alloc] initWithTag:@"Service Road (H3)"] autorelease];	
	[player setInAllRooms:H3];
	I3 = [[[Room alloc] initWithTag:@"Lawn (I3)"] autorelease];
	[player setInAllRooms:I3];
	J3 = [[[Room alloc] initWithTag:@"Lawn (J3)"] autorelease];
	[player setInAllRooms:J3];
	K3 = [[[Room alloc] initWithTag:@"Entrance Road (K3)"] autorelease];
	[player setInAllRooms:K3];
	L3 = [[[Room alloc] initWithTag:@"Entrance North Parking Lot (L3)"] autorelease];
	[player setInAllRooms:L3];
	
	B4 = [[[Room alloc] initWithTag:@"Service Road (B4)"] autorelease];	
	[player setInAllRooms:B4];
	C4 = [[[Room alloc] initWithTag:@"Lawn (C4)"] autorelease];
	[player setInAllRooms:C4];
	D4 = [[[Room alloc] initWithTag:@"Morrow Clubhouse (D4)"] autorelease];
	[player setInAllRooms:D4];
	E4 = [[[Room alloc] initWithTag:@"Cougar Ct Road (E4)"] autorelease];
	[player setInAllRooms:E4];
	F4 = [[[Room alloc] initWithTag:@"Service Road (F4)"] autorelease];
	[player setInAllRooms:F4];
	G4 = [[[Room alloc] initWithTag:@"Service Road (G4)"] autorelease];
	[player setInAllRooms:G4];
	H4 = [[[Room alloc] initWithTag:@"Service Road (H4)"]autorelease];
	[player setInAllRooms:H4];
	I4 = [[[Room alloc] initWithTag:@"Lawn (I4)"] autorelease];
	[player setInAllRooms:I4];
	J4 = [[[Room alloc] initWithTag:@"University Hall (J4)"] autorelease];
	[player setInAllRooms:J4];
	[[[J4 door] getLock] setRequiredKey:@"J4Key"];
	Key *J4Key = [[[[J4 door] getLock] getOriginalKey] autorelease];
	[J4Key setName:@"J4Key"];
	[[J4 door] insertKey:J4Key];
	[[J4 door] lock];
	[[J4 door] removeKey];
	K4 = [[[Room alloc] initWithTag:@"Entrance Road (K4)"] autorelease];
	[player setInAllRooms:K4];
	L4 = [[[Room alloc] initWithTag:@"Entrance North Parking Lot (L4)"] autorelease];
	[player setInAllRooms:L4];
	
	B5 = [[[Room alloc] initWithTag:@"Service Road (B5)"] autorelease];	
	[player setInAllRooms:B5];
	C5 = [[[Room alloc] initWithTag:@"Tennis Courts (C5)"] autorelease];
	[player setInAllRooms:C5];
	D5 = [[[Room alloc] initWithTag:@"Tennis Courts (D5)"] autorelease];
	[player setInAllRooms:D5];
	E5 = [[[Room alloc] initWithTag:@"Cougar Ct Road (E5)"] autorelease];
	[player setInAllRooms:E5];
	F5 = [[[Room alloc] initWithTag:@"Woodruff Gym (F5)"] autorelease];
	[player setInAllRooms:F5];
	[[[F5 door] getLock] setRequiredKey:@"F5Key"];
	Key *F5Key = [[[[F5 door] getLock] getOriginalKey] autorelease];
	[F5Key setName:@"F5Key"];
	[[F5 door] insertKey:F5Key];
	[[F5 door] lock];
	[[F5 door] removeKey];
	G5 = [[[Room alloc] initWithTag:@"Health & Wellness Center (G5)"] autorelease];	
	[player setInAllRooms:G5];
	H5 = [[[Room alloc] initWithShopAndTag:@"Davidson Center (H5)"] autorelease];	
	[player setInAllRooms:H5];
	I5 = [[[Room alloc] initWithTag:@"Schuster Hall (I5)"] autorelease];
	[player setInAllRooms:I5];
	J5 = [[[Room alloc] initWithTag:@"Lawn (J5)"] autorelease];
	[player setInAllRooms:J5];
	K5 = [[[Room alloc] initWithTag:@"Entrance Road (K5)"] autorelease];
	[player setInAllRooms:K5];
	L5 = [[[Room alloc] initWithTag:@"Entrance Road (L5)"] autorelease];
	[player setInAllRooms:L5];
	
	B6 = [[[Room alloc] initWithTag:@"Richards Parking Lot (B6)"] autorelease];	
	[player setInAllRooms:B6];
	C6 = [[[Room alloc] initWithTag:@"Richards Parking Lot (C6)"] autorelease];
	[player setInAllRooms:C6];
	D6 = [[[Room alloc] initWithTag:@"Richards Parking Lot (D6)"] autorelease];
	[player setInAllRooms:D6];
	E6 = [[[Room alloc] initWithTag:@"Cougar Ct Road (E6)"] autorelease];
	[player setInAllRooms:E6];
	F6 = [[[Room alloc] initWithTag:@"Richards Hall (F6)"] autorelease];
	[player setInAllRooms:F6];
	G6 = [[[Room alloc] initEndRoomWithTag:@"Clocktower (G6)"] autorelease];
	[player setInAllRooms:G6];
	H6 = [[[Room alloc] initWithTag:@"Lawn (H6)"] autorelease];
	[player setInAllRooms:H6];
	I6 = [[[Room alloc] initWithTag:@"Lawn (I6)"] autorelease];
	[player setInAllRooms:I6];
	J6 = [[[Room alloc] initWithTag:@"CCT (J6)"] autorelease];
	[player setInAllRooms:J6];
	[[[J6 door] getLock] setRequiredKey:@"J6Key"];
	Key *J6Key = [[[[J6 door] getLock] getOriginalKey] autorelease];
	[J6Key setName:@"J6Key"];
	[[J6 door] insertKey:J6Key];
	[[J6 door] lock];
	[[J6 door] removeKey];
	K6 = [[[Room alloc] initWithTag:@"Entrance Road (K6)"] autorelease];
	[player setInAllRooms:K6];
	L6 = [[[Room alloc] initWithTag:@"Entrance South Parking Lot (L6)"] autorelease];
	[player setInAllRooms:L6];
	
	B7 = [[[Room alloc] initWithTag:@"Algonquin Drive (B7)"] autorelease];	
	[player setInAllRooms:B7];
	C7 = [[[Room alloc] initWithTag:@"Algonquin Drive (C7)"] autorelease];
	[player setInAllRooms:C7];
	D7 = [[[Room alloc] initWithTag:@"Illges Hall Parking Lot (D7)"] autorelease];
	[player setInAllRooms:D7];
	E7 = [[[Room alloc] initWithTag:@"Tucker Hall (E7)"] autorelease];
	[player setInAllRooms:E7];
	[[[E7 door] getLock] setRequiredKey:@"E7Key"];
	Key *E7Key = [[[[E7 door] getLock] getOriginalKey] autorelease];
	[E7Key setName:@"E7Key"];
	[[E7 door] insertKey:E7Key];
	[[E7 door] lock];
	[[E7 door] removeKey];
	F7 = [[[Room alloc] initWithTag:@"Lawn (F7)"] autorelease];
	[player setInAllRooms:F7];
	G7 = [[[Room alloc] initWithTag:@"Woodall Hall (G7)"] autorelease];
	[player setInAllRooms:G7];
	[[[G7 door] getLock] setRequiredKey:@"G7Key"];
	Key *G7Key = [[[[G7 door] getLock] getOriginalKey] autorelease];
	[G7Key setName:@"G7Key"];
	[[G7 door] insertKey:G7Key];
	[[G7 door] lock];
	[[G7 door] removeKey];
	H7 = [[[Room alloc] initWithTag:@"Lawn (H7)"] autorelease];
	[player setInAllRooms:H7];
	I7 = [[[Room alloc] initWithTag:@"CCT Parking Lot (I7)"] autorelease];
	[player setInAllRooms:I7];
	J7 = [[[Room alloc] initWithTag:@"CCT Parking Lot (J7)"] autorelease];
	[player setInAllRooms:J7];
	K7 = [[[Room alloc] initWithTag:@"Entrance Road (K7)"] autorelease];
	[player setInAllRooms:K7];
	
	A8 = [[[Room alloc] initWithTag:@"Lawn (A8)"] autorelease];
	[player setInAllRooms:A8];
	B8 = [[[Room alloc] initWithTag:@"Plant Operations (B8)"] autorelease];	
	[player setInAllRooms:B8];
	C8 = [[[Room alloc] initWithTag:@"Algonquin Drive (C8)"] autorelease];
	[player setInAllRooms:C8];
	D8 = [[[Room alloc] initWithTag:@"Illges Hall (D8)"] autorelease];
	[player setInAllRooms:D8];
	[[[D8 door] getLock] setRequiredKey:@"D8Key"];
	Key *D8Key = [[[[D8 door] getLock] getOriginalKey] autorelease];
	[D8Key setName:@"D8Key"];
	[[D8 door] insertKey:D8Key];
	[[D8 door] lock];
	[[D8 door] removeKey];
	E8 = [[[Room alloc] initWithTag:@"Arnold Hall (E8)"] autorelease];
	[player setInAllRooms:E8];
	[[[E8 door] getLock] setRequiredKey:@"E8Key"];
	Key *E8Key = [[[[E8 door] getLock] getOriginalKey] autorelease];
	[E8Key setName:@"E8Key"];
	[[E8 door] insertKey:E8Key];
	[[E8 door] lock];
	[[E8 door] removeKey];
	F8 = [[[Room alloc] initWithTag:@"Howard Hall (F8)"] autorelease];
	[player setInAllRooms:F8];
	[[[F8 door] getLock] setRequiredKey:@"F8Key"];
	Key *F8Key = [[[[F8 door] getLock] getOriginalKey] autorelease];
	[F8Key setName:@"F8Key"];
	[[F8 door] insertKey:F8Key];
	[[F8 door] lock];
	[[F8 door] removeKey];
	G8 = [[[Room alloc] initWithShopAndTag:@"Schwob Library (G8)"] autorelease];
	[player setInAllRooms:G8];
	H8 = [[[Room alloc] initWithTag:@"Library Lane (H8)"] autorelease];
	[player setInAllRooms:H8];
	I8 = [[[Room alloc] initWithTag:@"Library Lane (I8)"] autorelease];
	[player setInAllRooms:I8];
	J8 = [[[Room alloc] initWithTag:@"Cleariew Circle (J8)"] autorelease];
	[player setInAllRooms:J8];
	K8 = [[[Room alloc] initWithTag:@"Cleariew Circle (K8)"] autorelease];
	[player setInAllRooms:K8];
	L8 = [[[Room alloc] initWithTag:@"Cleariew Circle (L8)"] autorelease];
	[player setInAllRooms:L8];
	M8 = [[[Room alloc] initWithTag:@"Cleariew Circle (M8)"] autorelease];
	[player setInAllRooms:M8];
	
	A9 = [[[Room alloc] initWithTag:@"Warehouse (A9)"] autorelease];
	[player setInAllRooms:A9];
	B9 = [[[Room alloc] initWithTag:@"Algonquin Parking Lot (B9)"] autorelease];
	[player setInAllRooms:B9];
	C9 = [[[Room alloc] initWithTag:@"Algonquin Drive (C9)"] autorelease];
	[player setInAllRooms:C9];
	D9 = [[[Room alloc] initWithTag:@"Algonquin Drive (D9)"] autorelease];
	[player setInAllRooms:D9];
	E9 = [[[Room alloc] initWithTag:@"Library Lane (E9)"] autorelease];
	[player setInAllRooms:E9];
	F9 = [[[Room alloc] initWithTag:@"Library Lane (F9)"] autorelease];
	[player setInAllRooms:F9];
	G9 = [[[Room alloc] initWithTag:@"Library Lane (G9)"] autorelease];
	[player setInAllRooms:G9];
	H9 = [[[Room alloc] initWithTag:@"Library Lane (H9)"] autorelease];	
	[player setInAllRooms:H9];
	I9 = [[[Room alloc] initWithTag:@"Cleariew Circle (I9)"] autorelease];
	[player setInAllRooms:I9];
	J9 = [[[Room alloc] initWithTag:@"Cleariew Circle (J9)"] autorelease];
	[player setInAllRooms:J9];
	K9 = [[[Room alloc] initWithTag:@"North Clearview Parking (K9)"] autorelease];
	[player setInAllRooms:K9];
	L9 = [[[Room alloc] initWithTag:@"Cleariew Circle (L9)"] autorelease];	
	[player setInAllRooms:L9];
	M9 = [[[Room alloc] initWithTag:@"International House (M9)"] autorelease];	
	[player setInAllRooms:M9];
	
	A10 = [[[Room alloc] initWithTag:@"Algonquin Parking Lot (A10)"] autorelease];
	[player setInAllRooms:A10];
	B10 = [[[Room alloc] initWithTag:@"Algonquin Parking Lot (B10)"] autorelease];
	[player setInAllRooms:B10];
	C10 = [[[Room alloc] initWithTag:@"Algonquin Parking Lot (C10)"] autorelease];
	[player setInAllRooms:C10];
	D10 = [[[Room alloc] initWithTag:@"Algonquin Drive (D10)"] autorelease];
	[player setInAllRooms:D10];
	G10 = [[[Room alloc] initWithTag:@"Stanley Hall (G10)"] autorelease];
	[player setInAllRooms:G10];
	[[[G10 door] getLock] setRequiredKey:@"G10Key"];
	Key *G10Key = [[[[G10 door] getLock] getOriginalKey] autorelease];
	[G10Key setName:@"G10Key"];
	[[G10 door] insertKey:G10Key];
	[[G10 door] lock];
	[[G10 door] removeKey];
	H10 = [[[Room alloc] initWithTag:@"Lenoir Hall (H10)"] autorelease];
	[player setInAllRooms:H10];
	[[[H10 door] getLock] setRequiredKey:@"H10Key"];
	Key *H10Key = [[[[H10 door] getLock] getOriginalKey] autorelease];
	[H10Key setName:@"H10Key"];
	[[H10 door] insertKey:H10Key];
	[[H10 door] lock];
	[[H10 door] removeKey];
	I10 = [[[Room alloc] initWithTag:@"Cleariew Circle (I10)"] autorelease];
	[player setInAllRooms:I10];
	J10 = [[[Room alloc] initWithTag:@"North Clearview Parking (J10)"] autorelease];
	[player setInAllRooms:J10];
	K10 = [[[Room alloc] initWithTag:@"North Clearview Parking (K10)"] autorelease];
	[player setInAllRooms:K10];
	L10 = [[[Room alloc] initWithTag:@"Cleariew Circle (L10)"] autorelease];	
	[player setInAllRooms:L10];
	M10 = [[[Room alloc] initWithTag:@"Intermural Field (M10)"] autorelease];	
	[player setInAllRooms:M10];
	
	A11 = [[[Room alloc] initWithTag:@"Algonquin Parking Lot (A11)"] autorelease];
	[player setInAllRooms:A11];
	B11 = [[[Room alloc] initWithTag:@"Algonquin Parking Lot (B11)"] autorelease];
	[player setInAllRooms:B11];
	C11 = [[[Room alloc] initWithTag:@"Algonquin Parking Lot (C11)"] autorelease];
	[player setInAllRooms:C11];
	D11 = [[[Room alloc] initWithTag:@"Algonquin Drive (D11)"] autorelease];
	[player setInAllRooms:D11];
	G11 = [[[Room alloc] initWithTag:@"Lawn (G11)"] autorelease];
	[player setInAllRooms:G11];
	H11 = [[[Room alloc] initWithTag:@"Lawn (H11)"] autorelease];	
	[player setInAllRooms:H11];
	I11 = [[[Room alloc] initWithTag:@"Cleariew Circle (I11)"] autorelease];
	[player setInAllRooms:I11];
	J11 = [[[Room alloc] initWithTag:@"Clearview II (J11)"] autorelease];
	[player setInAllRooms:J11];
	[[[J11 door] getLock] setRequiredKey:@"J11Key"];
	Key *J11Key = [[[[J11 door] getLock] getOriginalKey] autorelease];
	[J11Key setName:@"J11Key"];
	[[J11 door] insertKey:J11Key];
	[[J11 door] lock];
	[[J11 door] removeKey];
	K11 = [[[Room alloc] initWithTag:@"Lawn (K11)"] autorelease];
	[player setInAllRooms:K11];
	L11 = [[[Room alloc] initWithTag:@"Cleariew Circle (L11)"] autorelease];
	[player setInAllRooms:L11];
	M11 = [[[Room alloc] initWithTag:@"Intermural Field (M11)"] autorelease];
	[player setInAllRooms:M11];
	
	G12 = [[[Room alloc] initWithTag:@"Jordan Hall (G12)"] autorelease];
	[player setInAllRooms:G12];
	[[[G12 door] getLock] setRequiredKey:@"G12Key"];
	Key *G12Key = [[[[G12 door] getLock] getOriginalKey] autorelease];
	[G12Key setName:@"G12Key"];
	[[G12 door] insertKey:G12Key];
	[[G12 door] lock];
	[[G12 door] removeKey];
	I12 = [[[Room alloc] initWithTag:@"Cleariew Circle (I12)"] autorelease];
	[player setInAllRooms:I12];
	J12 = [[[Room alloc] initWithTag:@"South Clearview Parking (J12)"] autorelease];
	[player setInAllRooms:J12];
	K12 = [[[Room alloc] initWithTag:@"South Clearview Parking (K12)"] autorelease];
	[player setInAllRooms:K12];
	L12 = [[[Room alloc] initWithTag:@"Cleariew Circle (L12)"] autorelease];
	[player setInAllRooms:L12];
	M12 = [[[Room alloc] initWithTag:@"Intermural Field (M12)"] autorelease];
	[player setInAllRooms:M12];
	
	I13 = [[[Room alloc] initWithTag:@"Cleariew Circle (I13)"] autorelease];
	[player setInAllRooms:I13];
	J13 = [[[Room alloc] initWithTag:@"Cleariew Circle (J13)"] autorelease];
	[player setInAllRooms:J13];
	K13 = [[[Room alloc] initWithTag:@"Cleariew Circle (K13)"] autorelease];
	[player setInAllRooms:K13];
	L13 = [[[Room alloc] initWithTag:@"Cleariew Circle (L13)"] autorelease];	
	[player setInAllRooms:L13];
	
	[G6 setItemInRoom:C1Key];
	[G6 setItemInRoom:G1Key];
	[G6 setItemInRoom:G3Key];
	[G6 setItemInRoom:F5Key];
	
	[G6 setItemInRoom:J6Key];
	[G6 setItemInRoom:E7Key];
	[G6 setItemInRoom:D8Key];
	[G6 setItemInRoom:E8Key];
	
	[G6 setItemInRoom:F8Key];
	[G6 setItemInRoom:G10Key];
	[G6 setItemInRoom:H10Key];
	[G6 setItemInRoom:G12Key];
	
	[H5 setItemInShop:G7Key];
	[G8 setItemInShop:J11Key];
	[G8 setItemInShop:J4Key];	
	
	Book *C1Book = [[[Book alloc] initWithName:@"Java_Textbook"] autorelease];
	Book *G1Book = [[[Book alloc] initWithName:@"C++_Textbook"] autorelease];
	Book *G3Book = [[[Book alloc] initWithName:@"XHTMLTextbook"] autorelease];
	
	Book *F5Book = [[[Book alloc] initWithName:@"Python_Textbook"] autorelease];
	Book *G10Book = [[[Book alloc] initWithName:@"JavaScript_Textbook"] autorelease];
	Book *H10Book = [[[Book alloc] initWithName:@"PEARL_Textbook"] autorelease];	
	Book *G12Book = [[[Book alloc] initWithName:@"COBOL_Textbook"] autorelease];
	
	[C1 setItemInRoom:C1Book];
	[G1 setItemInRoom:G1Book];
	[G3 setItemInRoom:G3Book];

	[F5 setItemInRoom:F5Book];
	[G10 setItemInRoom:G10Book];
	[H10 setItemInRoom:H10Book];
	[G12 setItemInRoom:G12Book];
	
	Book *shopBook1 = [[[Book alloc] initWithName:@"Objective-C_Textbook"] autorelease];
	Book *shopBook2 = [[[Book alloc] initWithName:@"SQL_Textbook"] autorelease];	
	Book *shopBook3 = [[[Book alloc] initWithName:@"VisualBasic_Textbook"] autorelease];
	
	[H5 setItemInShop:shopBook1];
	[H5 setItemInShop:shopBook2];
	[G8 setItemInShop:shopBook3];
	
	Drink *water = [[[Drink alloc] initWithName:@"Water"] autorelease];
	
	[H5 setItemInShop:water];
	[G8 setItemInShop:water];
	
	Drink *food = [[[Food alloc] initWithName:@"Food"] autorelease];
	
	[H5 setItemInShop:food];
	[G8 setItemInShop:food];
	
//	Character *professor1 = [[[Character alloc] initInRoom:G6 WithName:@"Professor Obando"] autorelease];
//	Character *professor2 = [[[Character alloc] initInRoom:H8 WithName:@"Professor Summers"] autorelease];
//	
//	[[player allCharacters] setObject:professor1 forKey:[professor1 characterName]];
//	[[player allCharacters] setObject:professor2 forKey:[professor2 characterName]];
	
	[B1 setExit:@"east" toRoom:C1];
	[B1 setExit:@"south" toRoom:B2];

	[C1 setExit:@"south" toRoom:C2];
	[C1 setExit:@"west" toRoom: B1];		

	[G1 setExit:@"south" toRoom:G2];

	[K1 setExit:@"east" toRoom:L2];
	[K1 setExit:@"south" toRoom:K2];

	[L1 setExit:@"south" toRoom:L2];
	[L1 setExit:@"west" toRoom:K1];
	
	[B2 setExit:@"north" toRoom:B1];
	[B2 setExit:@"east" toRoom:C2];
	[B2 setExit:@"south" toRoom:B3];
	
	[C2 setExit:@"north" toRoom:C1];
	[C2 setExit:@"east" toRoom:D2];
	[C2 setExit:@"south" toRoom:C3];
	[C2 setExit:@"west" toRoom:B2];
	
	[D2 setExit:@"east" toRoom:E2];
	[D2 setExit:@"south" toRoom:D3];
	[D2 setExit:@"west" toRoom:C2];
	
	[E2 setExit:@"east" toRoom:F2];
	[E2 setExit:@"south" toRoom:E3];
	[E2 setExit:@"west" toRoom:D2];
	
	[F2 setExit:@"east" toRoom:G2];
	[F2 setExit:@"south" toRoom:F3];
	[F2 setExit:@"west" toRoom: E2];
	
	[G2 setExit:@"north" toRoom:G1];
	[G2 setExit:@"east" toRoom:H2];
	[G2 setExit:@"south" toRoom:G3];
	[G2 setExit:@"west" toRoom:F2];
	
	[H2 setExit:@"east" toRoom:I2];
	[H2 setExit:@"south" toRoom:H3];
	[H2 setExit:@"west" toRoom:G2];
	
	[I2 setExit:@"east" toRoom:J2];
	[I2 setExit:@"south" toRoom:I3];
	[I2 setExit:@"west" toRoom:H2];
	
	[J2 setExit:@"east" toRoom:K2];
	[J2 setExit:@"south" toRoom:J3];
	[J2 setExit:@"west" toRoom:I2];	
	
	[K2 setExit:@"north" toRoom:K1];
	[K2 setExit:@"east" toRoom:L2];
	[K2 setExit:@"south" toRoom:K3];
	[K2 setExit:@"west" toRoom:J2];	
	
	[L2 setExit:@"north" toRoom:L1];
	[L2 setExit:@"south" toRoom:L3];
	[L2 setExit:@"west" toRoom:K2];	
	
	[B3 setExit:@"north" toRoom:B2];
	[B3 setExit:@"east" toRoom:C3];
	[B3 setExit:@"south" toRoom:B4];
	
	[C3 setExit:@"north" toRoom:C2];
	[C3 setExit:@"east" toRoom:D3];
	[C3 setExit:@"south" toRoom:C4];
	[C3 setExit:@"west" toRoom:B3];
	
	[D3 setExit:@"north" toRoom:D2];
	[D3 setExit:@"east" toRoom:E3];
	[D3 setExit:@"south" toRoom:D4];
	[D3 setExit:@"west" toRoom:C3];
	
	[E3 setExit:@"north" toRoom:E2];
	[E3 setExit:@"east" toRoom:F3];
	[E3 setExit:@"south" toRoom:E4];
	[E3 setExit:@"west" toRoom:D3];
	
	[F3 setExit:@"north" toRoom:F2];
	[F3 setExit:@"east" toRoom:G3];
	[F3 setExit:@"south" toRoom:F4];
	[F3 setExit:@"west" toRoom:E3];
	
	[G3 setExit:@"north" toRoom:G2];
	[G3 setExit:@"east" toRoom:H3];
	[G3 setExit:@"south" toRoom:G4];
	[G3 setExit:@"west" toRoom:F3];
	
	[H3 setExit:@"north" toRoom:H2];
	[H3 setExit:@"east" toRoom:I3];
	[H3 setExit:@"south" toRoom:H4];
	[H3 setExit:@"west" toRoom:G3];
	
	[I3 setExit:@"north" toRoom:I2];
	[I3 setExit:@"east" toRoom:J3];
	[I3 setExit:@"south" toRoom:I4];
	[I3 setExit:@"west" toRoom:H3];
	
	[J3 setExit:@"north" toRoom:J2];
	[J3 setExit:@"east" toRoom:K3];
	[J3 setExit:@"south" toRoom:J4];
	[J3 setExit:@"west" toRoom:I3];	
	
	[K3 setExit:@"north" toRoom:K2];
	[K3 setExit:@"east" toRoom:L3];
	[K3 setExit:@"south" toRoom:K4];
	[K3 setExit:@"west" toRoom:J3];	
	
	[L3 setExit:@"north" toRoom:L2];
	[L3 setExit:@"south" toRoom:L4];
	[L3 setExit:@"west" toRoom:K3];	
	
	[B4 setExit:@"north" toRoom:B3];
	[B4 setExit:@"east" toRoom:C4];
	[B4 setExit:@"south" toRoom:B5];
	
	[C4 setExit:@"north" toRoom:C3];
	[C4 setExit:@"east" toRoom:D4];
	[C4 setExit:@"south" toRoom:C5];
	[C4 setExit:@"west" toRoom:B4];
	
	[D4 setExit:@"north" toRoom:D3];
	[D4 setExit:@"east" toRoom:E4];
	[D4 setExit:@"south" toRoom:D5];
	[D4 setExit:@"west" toRoom:C4];
	
	[E4 setExit:@"north" toRoom:E3];
	[E4 setExit:@"east" toRoom:F4];
	[E4 setExit:@"south" toRoom:E5];
	[E4 setExit:@"west" toRoom:D4];
	
	[F4 setExit:@"north" toRoom:F3];
	[F4 setExit:@"east" toRoom:G4];
	[F4 setExit:@"south" toRoom:F5];
	[F4 setExit:@"west" toRoom:E4];
	
	[G4 setExit:@"north" toRoom:G3];
	[G4 setExit:@"east" toRoom:H4];
	[G4 setExit:@"south" toRoom:G5];
	[G4 setExit:@"west" toRoom:F4];
	
	[H4 setExit:@"north" toRoom:H3];
	[H4 setExit:@"east" toRoom:I4];
	[H4 setExit:@"south" toRoom:H5];
	[H4 setExit:@"west" toRoom:G4];
	
	[I4 setExit:@"north" toRoom:I3];
	[I4 setExit:@"east" toRoom:J4];
	[I4 setExit:@"south" toRoom:I5];
	[I4 setExit:@"west" toRoom:H4];
	
	[J4 setExit:@"north" toRoom:J3];
	[J4 setExit:@"east" toRoom:K4];
	[J4 setExit:@"south" toRoom:J5];
	[J4 setExit:@"west" toRoom:I4];	
	
	[K4 setExit:@"north" toRoom:K3];
	[K4 setExit:@"east" toRoom:L4];
	[K4 setExit:@"south" toRoom:K5];
	[K4 setExit:@"west" toRoom:J4];	
	
	[L4 setExit:@"north" toRoom:L3];
	[L4 setExit:@"south" toRoom:L5];
	[L4 setExit:@"west" toRoom:K4];	
	
	[B5 setExit:@"north" toRoom:B4];
	[B5 setExit:@"east" toRoom:C5];
	[B5 setExit:@"south" toRoom:B6];
	
	[C5 setExit:@"north" toRoom:C4];
	[C5 setExit:@"east" toRoom:D5];
	[C5 setExit:@"south" toRoom:C6];
	[C5 setExit:@"west" toRoom:B5];
	
	[D5 setExit:@"north" toRoom:D4];
	[D5 setExit:@"east" toRoom:E5];
	[D5 setExit:@"south" toRoom:D6];
	[D5 setExit:@"west" toRoom:C5];
	
	[E5 setExit:@"north" toRoom:E4];
	[E5 setExit:@"east" toRoom:F5];
	[E5 setExit:@"south" toRoom:E6];
	[E5 setExit:@"west" toRoom:D5];
	
	[F5 setExit:@"north" toRoom:F4];
	[F5 setExit:@"east" toRoom:G5];
	[F5 setExit:@"south" toRoom:F6];
	[F5 setExit:@"west" toRoom:E5];
	
	[G5 setExit:@"north" toRoom:G4];
	[G5 setExit:@"east" toRoom:H5];
	[G5 setExit:@"south" toRoom:G6];
	[G5 setExit:@"west" toRoom:F5];
	
	[H5 setExit:@"north" toRoom:H4];
	[H5 setExit:@"east" toRoom:I5];
	[H5 setExit:@"south" toRoom:H6];
	[H5 setExit:@"west" toRoom:G5];
	
	[I5 setExit:@"north" toRoom:I4];
	[I5 setExit:@"east" toRoom:J5];
	[I5 setExit:@"south" toRoom:I6];
	[I5 setExit:@"west" toRoom:H5];
	
	[J5 setExit:@"north" toRoom:J4];
	[J5 setExit:@"east" toRoom:K5];
	[J5 setExit:@"south" toRoom:J6];
	[J5 setExit:@"west" toRoom:I5];	
	
	[K5 setExit:@"north" toRoom:K4];
	[K5 setExit:@"east" toRoom:L5];
	[K5 setExit:@"south" toRoom:K6];
	[K5 setExit:@"west" toRoom:J5];	
	
	[L5 setExit:@"north" toRoom:L4];
	[L5 setExit:@"south" toRoom:L6];
	[L5 setExit:@"west" toRoom:K5];	
	
	[B6 setExit:@"north" toRoom:B5];
	[B6 setExit:@"east" toRoom:C6];
	[B6 setExit:@"south" toRoom:B7];
	
	[C6 setExit:@"north" toRoom:C5];
	[C6 setExit:@"east" toRoom:D6];
	[C6 setExit:@"south" toRoom:C7];
	[C6 setExit:@"west" toRoom:B6];
	
	[D6 setExit:@"north" toRoom:D5];
	[D6 setExit:@"east" toRoom:E6];
	[D6 setExit:@"south" toRoom:D7];
	[D6 setExit:@"west" toRoom:C6];
	
	[E6 setExit:@"north" toRoom:E5];
	[E6 setExit:@"east" toRoom:F6];
	[E6 setExit:@"south" toRoom:E7];
	[E6 setExit:@"west" toRoom:D6];
	
	[F6 setExit:@"north" toRoom:F5];
	[F6 setExit:@"east" toRoom:G6];
	[F6 setExit:@"south" toRoom:F7];
	[F6 setExit:@"west" toRoom:E6];
	
	[G6 setExit:@"north" toRoom:G5];
	[G6 setExit:@"east" toRoom:H6];
	[G6 setExit:@"south" toRoom:G7];
	[G6 setExit:@"west" toRoom:F6];
	
	[H6 setExit:@"north" toRoom:H5];
	[H6 setExit:@"east" toRoom:I6];
	[H6 setExit:@"south" toRoom:H7];
	[H6 setExit:@"west" toRoom:G6];
	
	[I6 setExit:@"north" toRoom:I5];
	[I6 setExit:@"east" toRoom:J6];
	[I6 setExit:@"south" toRoom:I7];
	[I6 setExit:@"west" toRoom:H6];
	
	[J6 setExit:@"north" toRoom:J5];
	[J6 setExit:@"east" toRoom:K6];
	[J6 setExit:@"south" toRoom:J7];
	[J6 setExit:@"west" toRoom:I6];	
	
	[K6 setExit:@"north" toRoom:K5];
	[K6 setExit:@"east" toRoom:L6];
	[K6 setExit:@"south" toRoom:K7];
	[K6 setExit:@"west" toRoom:J6];	
	
	[L6 setExit:@"north" toRoom:L5];
	[L6 setExit:@"west" toRoom:K6];		
	
	[B7 setExit:@"north" toRoom:B6];
	[B7 setExit:@"east" toRoom:C7];
	[B7 setExit:@"south" toRoom:B8];
	
	[C7 setExit:@"north" toRoom:C6];
	[C7 setExit:@"east" toRoom:D7];
	[C7 setExit:@"south" toRoom:C8];
	[C7 setExit:@"west" toRoom:B7];
	
	[D7 setExit:@"north" toRoom:D6];
	[D7 setExit:@"east" toRoom:E7];
	[D7 setExit:@"south" toRoom:D8];
	[D7 setExit:@"west" toRoom:C7];
	
	[E7 setExit:@"north" toRoom:E6];
	[E7 setExit:@"east" toRoom:F7];
	[E7 setExit:@"south" toRoom:E8];
	[E7 setExit:@"west" toRoom:D7];
	
	[F7 setExit:@"north" toRoom:F6];
	[F7 setExit:@"east" toRoom:G7];
	[F7 setExit:@"south" toRoom:F8];
	[F7 setExit:@"west" toRoom:E7];
	
	[G7 setExit:@"north" toRoom:G6];
	[G7 setExit:@"east" toRoom:H7];
	[G7 setExit:@"south" toRoom:G8];
	[G7 setExit:@"west" toRoom:F7];
	
	[H7 setExit:@"north" toRoom:H6];
	[H7 setExit:@"east" toRoom:I7];
	[H7 setExit:@"south" toRoom:H8];
	[H7 setExit:@"west" toRoom:G7];
	
	[I7 setExit:@"north" toRoom:I6];
	[I7 setExit:@"east" toRoom:J7];
	[I7 setExit:@"south" toRoom:I8];
	[I7 setExit:@"west" toRoom:H7];
	
	[J7 setExit:@"north" toRoom:J6];
	[J7 setExit:@"east" toRoom:K7];
	[J7 setExit:@"south" toRoom:J8];
	[J7 setExit:@"west" toRoom:I7];	
	
	[K7 setExit:@"north" toRoom:K6];
	[K7 setExit:@"south" toRoom:K8];
	[K7 setExit:@"west" toRoom:J7];		
	
	[A8 setExit:@"east" toRoom:B8];
	[A8 setExit:@"south" toRoom:A9];
	
	[B8 setExit:@"north" toRoom:B7];
	[B8 setExit:@"east" toRoom:C8];
	[B8 setExit:@"south" toRoom:B9];
	[B8 setExit:@"west" toRoom:A8];
	
	[C8 setExit:@"north" toRoom:C7];
	[C8 setExit:@"east" toRoom:D8];
	[C8 setExit:@"south" toRoom:C9];
	[C8 setExit:@"west" toRoom:B8];
	
	[D8 setExit:@"north" toRoom:D7];
	[D8 setExit:@"east" toRoom:E8];
	[D8 setExit:@"south" toRoom:D9];
	[D8 setExit:@"west" toRoom:C8];
	
	[E8 setExit:@"north" toRoom:E7];
	[E8 setExit:@"east" toRoom:F8];
	[E8 setExit:@"south" toRoom:E9];
	[E8 setExit:@"west" toRoom:D8];
	
	[E8 setExit:@"north" toRoom:F7];
	[F8 setExit:@"east" toRoom:G8];
	[F8 setExit:@"south" toRoom:F9];
	[F8 setExit:@"west" toRoom:E8];
	
	[G8 setExit:@"north" toRoom:G7];
	[G8 setExit:@"east" toRoom:H8];
	[G8 setExit:@"south" toRoom:G9];
	[G8 setExit:@"west" toRoom:F8];
	
	[H8 setExit:@"north" toRoom:H7];
	[H8 setExit:@"east" toRoom:I8];
	[H8 setExit:@"south" toRoom:H9];
	[H8 setExit:@"west" toRoom:G8];
	
	[I8 setExit:@"north" toRoom:I7];
	[I8 setExit:@"east" toRoom:J8];
	[I8 setExit:@"south" toRoom:I9];
	[I8 setExit:@"west" toRoom:H8];
	
	[J8 setExit:@"north" toRoom:J7];
	[J8 setExit:@"east" toRoom:K8];
	[J8 setExit:@"south" toRoom:J9];
	[J8 setExit:@"west" toRoom:I8];	
	
	[K8 setExit:@"north" toRoom:K7];
	[K8 setExit:@"east" toRoom:L8];
	[K8 setExit:@"south" toRoom:K9];
	[K8 setExit:@"west" toRoom:J8];	

	[L8 setExit:@"east" toRoom:M8];
	[L8 setExit:@"south" toRoom:L9];
	[L8 setExit:@"west" toRoom:K8];	

	[M8 setExit:@"south" toRoom:M9];
	[M8 setExit:@"west" toRoom:L6];	
	
	[A9 setExit:@"north" toRoom:A8];
	[A9 setExit:@"east" toRoom:B9];
	[A9 setExit:@"south" toRoom:A10];
	
	[B9 setExit:@"north" toRoom:B8];
	[B9 setExit:@"east" toRoom:C9];
	[B9 setExit:@"south" toRoom:B10];
	[B9 setExit:@"west" toRoom:A9];
	
	[C9 setExit:@"north" toRoom:C8];
	[C9 setExit:@"east" toRoom:D9];
	[C9 setExit:@"south" toRoom:C10];
	[C9 setExit:@"west" toRoom:B9];
	
	[D9 setExit:@"north" toRoom:D8];
	[D9 setExit:@"east" toRoom:E9];
	[D9 setExit:@"south" toRoom:D10];
	[D9 setExit:@"west" toRoom:C9];
	
	[E9 setExit:@"north" toRoom:E8];
	[E9 setExit:@"east" toRoom:F9];
	[E9 setExit:@"west" toRoom:D9];
	
	[E9 setExit:@"north" toRoom:F8];
	[F9 setExit:@"east" toRoom:G9];
	[F9 setExit:@"west" toRoom:E9];
	
	[G9 setExit:@"north" toRoom:G8];
	[G9 setExit:@"east" toRoom:H9];
	[G9 setExit:@"south" toRoom:G10];
	[G9 setExit:@"west" toRoom:F9];
	
	[H9 setExit:@"north" toRoom:H8];
	[H9 setExit:@"east" toRoom:I9];
	[H9 setExit:@"south" toRoom:H10];
	[H9 setExit:@"west" toRoom:G9];
	
	[I9 setExit:@"north" toRoom:I8];
	[I9 setExit:@"east" toRoom:J9];
	[I9 setExit:@"south" toRoom:I10];
	[I9 setExit:@"west" toRoom:H9];
	
	[J9 setExit:@"north" toRoom:J8];
	[J9 setExit:@"east" toRoom:K9];
	[J9 setExit:@"south" toRoom:J10];
	[J9 setExit:@"west" toRoom:I9];	
	
	[K9 setExit:@"north" toRoom:K8];
	[K9 setExit:@"east" toRoom:L9];
	[K9 setExit:@"south" toRoom:K10];
	[K9 setExit:@"west" toRoom:J9];	
	
	[L9 setExit:@"north" toRoom:L8];
	[L9 setExit:@"east" toRoom:M9];
	[L9 setExit:@"south" toRoom:L10];
	[L9 setExit:@"west" toRoom:K9];	
	
	[M9 setExit:@"north" toRoom:M8];
	[M9 setExit:@"south" toRoom:M10];
	[M9 setExit:@"west" toRoom:L9];	
	
	[A10 setExit:@"north" toRoom:A9];
	[A10 setExit:@"east" toRoom:B10];
	[A10 setExit:@"south" toRoom:A11];	
	
	[B10 setExit:@"north" toRoom:B9];
	[B10 setExit:@"east" toRoom:C10];
	[B10 setExit:@"south" toRoom:B11];
	[B10 setExit:@"west" toRoom:A10];
	
	[C10 setExit:@"north" toRoom:C9];
	[C10 setExit:@"east" toRoom:D10];
	[C10 setExit:@"south" toRoom:C11];
	[C10 setExit:@"west" toRoom:B10];
	
	[D10 setExit:@"north" toRoom:D9];
	[D10 setExit:@"south" toRoom:D11];
	[D10 setExit:@"west" toRoom:C10];
	
	[G10 setExit:@"north" toRoom:G9];
	[G10 setExit:@"east" toRoom:H10];
	[G10 setExit:@"south" toRoom:G11];
	
	[H10 setExit:@"north" toRoom:H9];
	[H10 setExit:@"east" toRoom:I10];
	[H10 setExit:@"south" toRoom:H11];
	[H10 setExit:@"west" toRoom:G10];
	
	[I10 setExit:@"north" toRoom:I9];
	[I10 setExit:@"east" toRoom:J10];
	[I10 setExit:@"south" toRoom:I11];
	[I10 setExit:@"west" toRoom:H10];
	
	[J10 setExit:@"north" toRoom:J9];
	[J10 setExit:@"east" toRoom:K10];
	[J10 setExit:@"south" toRoom:J11];
	[J10 setExit:@"west" toRoom:I10];	
	
	[K10 setExit:@"north" toRoom:K9];
	[K10 setExit:@"east" toRoom:L10];
	[K10 setExit:@"south" toRoom:K11];
	[K10 setExit:@"west" toRoom:J10];	
	
	[L10 setExit:@"north" toRoom:L9];
	[L10 setExit:@"east" toRoom:M10];
	[L10 setExit:@"south" toRoom:L11];
	[L10 setExit:@"west" toRoom:K10];	
	
	[M10 setExit:@"north" toRoom:M9];
	[M10 setExit:@"south" toRoom:M11];
	[M10 setExit:@"west" toRoom:L10];		
	
	[A11 setExit:@"north" toRoom:A10];
	[A11 setExit:@"east" toRoom:B11];
	
	[B11 setExit:@"north" toRoom:B10];
	[B11 setExit:@"east" toRoom:C11];
	[B11 setExit:@"west" toRoom:A11];
	
	[C11 setExit:@"north" toRoom:C10];
	[C11 setExit:@"east" toRoom:D11];
	[C11 setExit:@"west" toRoom:B11];
	
	[D11 setExit:@"north" toRoom:D10];
	[D11 setExit:@"west" toRoom:C11];
	
	[G11 setExit:@"north" toRoom:G10];
	[G11 setExit:@"east" toRoom:H11];
	[G11 setExit:@"south" toRoom:G12];
	
	[H11 setExit:@"north" toRoom:H10];
	[H11 setExit:@"east" toRoom:I11];
	[H11 setExit:@"west" toRoom:G11];
	
	[I11 setExit:@"north" toRoom:I10];
	[I11 setExit:@"east" toRoom:J11];
	[I11 setExit:@"south" toRoom:I12];
	[I11 setExit:@"west" toRoom:H11];
	
	[J11 setExit:@"north" toRoom:J10];
	[J11 setExit:@"east" toRoom:K11];
	[J11 setExit:@"south" toRoom:J12];
	[J11 setExit:@"west" toRoom:I11];	
	
	[K11 setExit:@"north" toRoom:K10];
	[K11 setExit:@"east" toRoom:L11];
	[K11 setExit:@"south" toRoom:K12];
	[K11 setExit:@"west" toRoom:J11];	
	
	[L11 setExit:@"north" toRoom:L10];
	[L11 setExit:@"east" toRoom:M11];
	[L11 setExit:@"south" toRoom:L12];
	[L11 setExit:@"west" toRoom:K11];	
	
	[M11 setExit:@"north" toRoom:M10];
	[M11 setExit:@"south" toRoom:M12];
	[M11 setExit:@"west" toRoom:L11];	
	
	[G12 setExit:@"north" toRoom:G11];
	
	[I12 setExit:@"north" toRoom:I11];
	[I12 setExit:@"east" toRoom:J12];
	[I12 setExit:@"south" toRoom:I13];
	
	[J12 setExit:@"north" toRoom:J11];
	[J12 setExit:@"east" toRoom:K12];
	[J12 setExit:@"south" toRoom:J13];
	[J12 setExit:@"west" toRoom:I12];	
	
	[K12 setExit:@"north" toRoom:K11];
	[K12 setExit:@"east" toRoom:L12];
	[K12 setExit:@"south" toRoom:K13];
	[K12 setExit:@"west" toRoom:J12];	
	
	[L12 setExit:@"north" toRoom:L11];
	[L12 setExit:@"east" toRoom:M12];
	[L12 setExit:@"south" toRoom:L13];
	[L12 setExit:@"west" toRoom:K12];	
	
	[M12 setExit:@"north" toRoom:M11];
	[M12 setExit:@"west" toRoom:L12];		
	
	[I13 setExit:@"north" toRoom:I11];
	[I13 setExit:@"east" toRoom:J12];
	
	[J13 setExit:@"north" toRoom:J11];
	[J13 setExit:@"east" toRoom:K12];
	[J13 setExit:@"west" toRoom:I12];	
	
	[K13 setExit:@"north" toRoom:K11];
	[K13 setExit:@"east" toRoom:L12];
	[K13 setExit:@"west" toRoom:J12];	
	
	[L13 setExit:@"north" toRoom:L11];
	[L13 setExit:@"west" toRoom:K12];	
	

	
	finalScore = 0;//([G6 numberOfKeys] * pointsPerKey) //+ ([G6 numberOfBooks] * pointsPerBook) + [player currency] - [player totalMoves];	
	
	return G6;
}
	 
-(void)play
{
	MyLog(@"%@", [self welcome]);
	
	BOOL finished = NO;
	while (!finished) {
		Command *command = [parser getCommand];
		if (command) 
		{
			finished = [command execute:player];
		}
		else 
		{
			MyLog(@"  I don't understand...");
		}
	}
	MyLog(@"\nThank you for playing.\n\nYour final score is: %i\n\n", [self finalScore]);
}

-(NSString *)welcome
{
	NSString *message = [NSString stringWithString:@"Welcome to the World of CSU!\nThe World of CSU is a new, incredibly boring adventure game.\nYour goal is to gather as many programming textbooks and keys\nas possible and place them at the clocktower.\n"];
	return [NSString stringWithFormat:@"\n%@\nYou have a backpack with a maximum capacity of\n%i pounds and %i cubic inches.\nType 'help' for available commands.\n%@", message, [player maxWeight], [player maxCubicInches], [player currentRoom]];
}

-(void)dealloc
{
	[parser release];
	[player release];
	
	[super dealloc];
}

@end
