//
//  ArchwingAbilitys.m
//  Warframe Terminal
//
//  Created by Patrick Good on 4/9/15.
//  Copyright (c) 2015 Patrick Good. All rights reserved.
//

#import "ArchwingAbilitys.h"

@implementation ArchwingAbilitys
- (id)init {
    return [self initWithArchwing:@""
                             Name:@""
                           Energy:@""
                         Descrip :@""];
}
- (id)initWithArchwing:(NSString *) archwing
                  Name:(NSString *) name
                Energy:(NSString *) energy
              Descrip :(NSString *) descrip
{
    // Call the superclass's designated initializer
    self = [super init];
    // Did the superclass's designated initializer succeed?
    if (self) {
        // Give the instance variables initial values
      
        [self setArchwing: archwing];
        [self setName: name];
        [self setEnergy: energy];
        [self setDescrip :descrip];
        
    }
    // Return the address of the newly initialized object
    return self;
}
@end
