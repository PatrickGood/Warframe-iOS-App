//
//  Mods.m
//  Warframe Terminal
//
//  Created by Patrick Good on 4/9/15.
//  Copyright (c) 2015 Patrick Good. All rights reserved.
//

#import "Mods.h"

@implementation Mods
- (id)init {
    return [self initWithName:@""
                         Type:@""];
}
- (id)initWithName:(NSString *)name
              Type:(NSString *)type;
{
    // Call the superclass's designated initializer
    self = [super init];
    // Did the superclass's designated initializer succeed?
    if (self) {
        // Give the instance variables initial values
        [self setName:name];
        [self setType:type];
    }
    // Return the address of the newly initialized object
    return self;
}
@end
