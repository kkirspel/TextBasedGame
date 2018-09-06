#
# This script was developed for SweetTutos Tutorials
# www.sweettutos.com
#
include $(GNUSTEP_MAKEFILES)/common.make
# make a simple program in Objective-C, call it SweetTutos
TOOL_NAME = SweetTutos
# The implementation Objective-C file which is going to be compiled
SweetTutos_OBJC_FILES = Game.m
# Header files of your project
SweetTutos_HEADER_FILES = BackCommand.h, Bomb.h, Book.h, BrowseCommand.h, BuyCommand.h, Character.h, Command.h, CommandWords.h, Door.h, Drink.h, DropCommand.h, Food.h, Game.h, GameProtocols.h, HelperFunctions.h, GoCommand.h, HelpCommand.h, InventoryCommand.h, Key.h, Parser.h, PickupCommand.h, Player.h, QuitCommand.h, RegularLock.h, Room.h, SellCommand.h, StatsCommand.h, TeleportCommand.h, UnlockCommand.h 
# //here goes all header files (.h). For the moment, on n'en a pas.
# Define compilation flags
ADDITIONAL_CPPFLAGS = -Wall -Wno-import
# Include rules for creating a command line tool for Objective-C
include $(GNUSTEP_MAKEFILES)/tool.make