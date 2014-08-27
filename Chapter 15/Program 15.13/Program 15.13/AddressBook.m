//
//  AddressBook.m
//  Program 15.12
//
//  Created by Michał Listowski on 29.07.2014.
//

#import "AddressBook.h"

@implementation AddressBook

@synthesize bookName, book;

//  Set up the AddressBook's nameand an empty book

-(instancetype) initWithName: (NSString *) name{
  self = [super init];
  if (self) {
    bookName = [NSString stringWithString:name];
    book = [NSMutableArray array];
  }
  return self;
}
-(instancetype) init{
  return [self initWithName:@"NoName"];
}
-(void) addCard: (AddressCard *) theCard{
  [book addObject:theCard];
}
-(NSUInteger) entries{
  return [book count];
}
-(void) list{
  NSLog(@"======= Contents of %@ =======", bookName);
  [self.book enumerateObjectsUsingBlock: ^(AddressCard *theCard, NSUInteger idx, BOOL *stop) {
    NSLog(@"%-20s    %-32s", [theCard.name UTF8String], [theCard.email UTF8String]);
  }
   ];
  NSLog(@"===============================================");
}

//  lookup addres card by name -- assumes an exact match

-(AddressCard *) lookup: (NSString *) theName{
  for (AddressCard *nextCard in book)
    if ([nextCard.name caseInsensitiveCompare:theName] == NSOrderedSame)
      return  nextCard;
  
  return nil;
}

@end
