//
//  Warframes.m
//  Warframe Terminal
//
//  Created by Patrick Good on 4/9/15.
//  Copyright (c) 2015 Patrick Good. All rights reserved.
//

#import "Warframes.h"

@implementation Warframes
- (id)init {
    return [self initWithName:@""
                       Health:@""
               ShieldCapacity:@""
                        Power:@""
               ShieldRecharge:@""
                        Armor:@""
                     Stamina :@""
                  SprintSpeed:@""
                   Polarities:@""
                 AuraPolarity:@""
                    ModPoints:@""
                     Descrip :@""];
}
- (id)initWithName:(NSString *) name
            Health:(NSString *)health
    ShieldCapacity:(NSString *)shieldCapacity
             Power:(NSString *)power
    ShieldRecharge:(NSString *) shieldRecharge
             Armor:(NSString *)armor
          Stamina :(NSString *)stamina
       SprintSpeed:(NSString *)sprintSpeed
        Polarities:(NSString *)polarities
      AuraPolarity:(NSString *)auraPolarity
         ModPoints:(NSString *) modPoints
          Descrip :(NSString *)descrip
{
    // Call the superclass's designated initializer
    self = [super init];
    // Did the superclass's designated initializer succeed?
    if (self) {
        // Give the instance variables initial values
      
        [self setName: name];
        [self setHealth:health];
        [self setShieldCapacity :shieldCapacity];
        [self setPower:power];
        [self setShieldRecharge:shieldRecharge];
        [self setArmor:armor];
        [self setStamina:stamina];
        [self setSprintSpeed:sprintSpeed];
        [self setPolarities:polarities];
        [self setAuraPolarity:auraPolarity];
        [self setModPoints:modPoints];
        [self setDescrip :descrip];
        
    }
    // Return the address of the newly initialized object
    return self;
}
@end
