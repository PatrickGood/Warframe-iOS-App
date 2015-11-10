//
//  Archwings.m
//  Warframe Terminal
//
//  Created by Patrick Good on 4/9/15.
//  Copyright (c) 2015 Patrick Good. All rights reserved.
//

#import "Archwings.h"

@implementation Archwings
- (id)init {
    return [self initWithName:@""
                      Health:@""
             ShieldCapacity :@""
                       Armor:@""
                       Power:@""
                  FlightSpeed:@""
                     Stamina:@""
              ConclaveRating:@""
                  Polarities:@""
                    Descrip :@""];
}
- (id)initWithName:(NSString *) name
            Health:(NSString *)health
   ShieldCapacity :(NSString *)shieldCapacity
             Armor:(NSString *)armor
             Power:(NSString *)power
      FlightSpeed :(NSString *)flightSpeed
           Stamina:(NSString *)stamina
    ConclaveRating:(NSString *)conclaveRating
        Polarities:(NSString *)polarities
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
    [self setArmor:armor];
    [self setPower:power];
    [self setFlightSpeed:flightSpeed];
    [self setStamina:stamina];
    [self setConclaveRating:conclaveRating];
    [self setPolarities:polarities];
    [self setDescrip :descrip];
        
    }
    // Return the address of the newly initialized object
    return self;
}
@end
