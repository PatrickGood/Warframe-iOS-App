//
//  Resources.m
//  Warframe Terminal
//
//  Created by Patrick Good on 4/9/15.
//  Copyright (c) 2015 Patrick Good. All rights reserved.
//

#import "Resources.h"

@implementation Resources
- (id)init {
    return [self initWithResourceName:@"Resource"
                         Rarity:@""];
}
- (id)initWithResourceName:(NSString *)resourceName Rarity:(NSString *)rarity
{
    // Call the superclass's designated initializer
    self = [super init];
    // Did the superclass's designated initializer succeed?
    if (self) {
        // Give the instance variables initial values
        [self setResourceName:resourceName];
        [self setRarity:rarity];
    }
    // Return the address of the newly initialized object
    return self;
}
@end
