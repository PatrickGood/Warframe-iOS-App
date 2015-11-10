//
//  Archwings.h
//  Warframe Terminal
//
//  Created by Patrick Good on 4/9/15.
//  Copyright (c) 2015 Patrick Good. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Archwings : NSObject
@property (nonatomic) NSString * name;
@property (nonatomic) NSString * health;
@property (nonatomic) NSString * shieldCapacity;
@property (nonatomic) NSString * armor;
@property (nonatomic) NSString * power;
@property (nonatomic) NSString * flightSpeed;
@property (nonatomic) NSString * stamina;
@property (nonatomic) NSString * conclaveRating;
@property (nonatomic) NSString * polarities;
@property (nonatomic) NSString * descrip;
- (id)initWithName:(NSString *) name
                  Health:(NSString *)health
           ShieldCapacity :(NSString *)shieldCapacity
           Armor:(NSString *)armor
           Power:(NSString *)power
           FlightSpeed :(NSString *)flightSpeed
            Stamina:(NSString *)stamina
            ConclaveRating:(NSString *)conclaveRating
            Polarities:(NSString *)polarities
          Descrip :(NSString *)descrip;
@end
