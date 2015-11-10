//
//  Sentinels.m
//  Warframe Terminal
//
//  Created by Patrick Good on 4/9/15.
//  Copyright (c) 2015 Patrick Good. All rights reserved.
//

#import "Sentinels.h"

@implementation Sentinels
- (id)init {
    return [self initWithName:@""
               Health:@""
       ShieldCapacity:@""
                Armor:@""
                Power:@""
              Stamina:@""
       ConclaveRating:@""
           Polarities:@""
        DefaultWeapon:@""
   BaseTargetingRange:@""
          CarrierMods:@""
              Descrip:@""];
}
- (id)initWithName: (NSString *) name
            Health:(NSString *) health
    ShieldCapacity: (NSString *) shieldCapacity
             Armor:(NSString *) armor
             Power: (NSString *) power
           Stamina:(NSString *) stamina
    ConclaveRating:(NSString *) conclaveRating
        Polarities: (NSString *) polarities
     DefaultWeapon: (NSString *) defaultWeapon
BaseTargetingRange: (NSString *) baseTargetingRange
       CarrierMods:(NSString *) carrierMods
           Descrip:(NSString *) descrip
{
    // Call the superclass's designated initializer
    self = [super init];
    // Did the superclass's designated initializer succeed?
    if (self) {
        // Give the instance variables initial values
        [self setName: name];
        [self setHealth:health];
        [self setShieldCapacity :shieldCapacity];
        [self setArmor:armor];
        [self setPower:power];
        [self setStamina:stamina];
        [self setConclaveRating:conclaveRating];
        [self setPolarities:polarities];
        [self setDefaultWeapon:defaultWeapon];
        [self setBaseTargetingRange:baseTargetingRange];
        [self setCarrierMods:carrierMods];
        [self setDescrip:descrip];
       
     

        
    }
    // Return the address of the newly initialized object
    return self;
}
@end
