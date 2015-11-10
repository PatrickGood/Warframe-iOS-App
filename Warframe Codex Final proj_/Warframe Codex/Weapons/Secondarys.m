//
//  Secondary.m
//  Warframe Terminal
//
//  Created by Patrick Good on 4/9/15.
//  Copyright (c) 2015 Patrick Good. All rights reserved.
//

#import "Secondarys.h"

@implementation Secondarys
- (id)init {
    return [self initWithName:@""
                       Impact:@""
                     Puncture:@""
                        Slash:@""
           CriticalMultiplier:@""
               CriticalChance:@""
                      Descrip:@""
                         Type:@""];
}
- (id)initWithName: (NSString *) name
            Impact: (NSString *) impact
          Puncture:(NSString *) puncture
             Slash: (NSString *) slash
CriticalMultiplier: (NSString *)criticalMultiplier
    CriticalChance: (NSString *)criticalChance
           Descrip:(NSString *) descrip
              Type: (NSString *) type
{
    // Call the superclass's designated initializer
    self = [super init];
    // Did the superclass's designated initializer succeed?
    if (self) {
        // Give the instance variables initial values
        [self setName: name];
        [self setImpact:impact];
        [self setPuncture:puncture];
        [self setSlash:slash];
        [self setCriticalMultiplier:criticalMultiplier];
        [self setCriticalChance: criticalChance];
        [self setDescrip:descrip];
        [self setType:type];

     

        
    }
    // Return the address of the newly initialized object
    return self;
}
@end
