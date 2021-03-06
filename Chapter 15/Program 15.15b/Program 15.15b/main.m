//
//  main.m
//  Program 15.15b
//
//  Created by Michał Listowski on 01.08.2014.
//

#import "AddressBook.h"

int main(int argc, const char * argv[])
{
  
  @autoreleasepool {
    NSString *aName = @"Julia Kochan";
    NSString *aEmail = @"jewls337@axlc.com";
    NSString *bName = @"Tony Iannino";
    NSString *bEmail = @"tony.iannino@techfitnes.com";
    NSString *cName = @"Stephen Kochan";
    NSString *cEmail = @"steve@classroomM.com";
    NSString *dName = @"Jamie Baker";
    NSString *dEmail = @"jbaker@classroomM.com";
    
    AddressCard *card1 = [[AddressCard alloc] init];
    AddressCard *card2 = [[AddressCard alloc] init];
    AddressCard *card3 = [[AddressCard alloc] init];
    AddressCard *card4 = [[AddressCard alloc] init];
    
    //  Set up a new address book
    
    AddressBook *myBook = [[AddressBook alloc] initWithName:@"Linda's Addres Book"];
    
    NSLog(@"Entries in address book after creation: %li", [myBook entries]);
    
    //  Now set up four address cards
    
    [card1 setName:aName andEmail:aEmail];
    [card2 setName:bName andEmail:bEmail];
    [card3 setName:cName andEmail:cEmail];
    [card4 setName:dName andEmail:dEmail];
    
    //  Add the cards to the address book
    
    [myBook addCard:card1];
    [myBook addCard:card2];
    [myBook addCard:card3];
    [myBook addCard:card4];
    
    //  List the unsorted book
    
    [myBook list];
    
    //  Sort it and list it again
    
    [myBook sort];
    [myBook list];
    
  }
  return 0;
}
