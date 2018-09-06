#import <Foundation/Foundation.h>
#import "Game.h"
#import "Door.h"
#import "RegularLock.h"
#import "Room.h"

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

	Game *game = [[Game alloc] init];
	[game play];
	[game release];

	
	//testing area
	
	
	
	[pool drain];
    return 0;
	
}

void MyLog(NSString *format, ...)
{
	va_list args;
	va_start(args, format);
	NSString *formattedString = [[NSString alloc] initWithFormat:format arguments: args];
	va_end(args);
	[[NSFileHandle fileHandleWithStandardOutput] writeData:[formattedString dataUsingEncoding: NSNEXTSTEPStringEncoding]];
	[formattedString release];
}