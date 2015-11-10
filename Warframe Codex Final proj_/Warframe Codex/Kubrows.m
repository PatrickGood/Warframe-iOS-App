//
//  Kubrows.m
//  Warframe Terminal
//
//  Created by Patrick Good on 4/9/15.
//  Copyright (c) 2015 Patrick Good. All rights reserved.
//

#import "Kubrows.h"

@implementation Kubrows
- (id)init {
    return [self initWithName:@""
                      Health:@""
             ShieldCapacity :@""
                       Armor:@""
                       Power:@""
                     Stamina:@""
                      Slash :@""
                 CritChance :@""
              CritMultiplier:@""
                StatusChance:@""
              ConclaveRating:@""
                  Polarities:@""
                    Descrip :@""];
}
- (id)initWithName:(NSString *) name
           Health:(NSString *)health
  ShieldCapacity :(NSString *)shieldCapacity
            Armor:(NSString *)armor
            Power:(NSString *)power
          Stamina:(NSString *)stamina
           Slash :(NSString *)slash
      CritChance :(NSString *)critChance
   CritMultiplier:(NSString *)critMultiplier
     StatusChance:(NSString *)statusChance
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
    [self setStamina:stamina];
    [self setSlash :slash];
    [self setCritChance :critChance];
    [self setCritMultiplier:critMultiplier];
    [self setStatusChance:statusChance];
    [self setConclaveRating:conclaveRating];
    [self setPolarities:polarities];
    [self setDescrip :descrip];
        
    }
    // Return the address of the newly initialized object
    return self;
}
@end
