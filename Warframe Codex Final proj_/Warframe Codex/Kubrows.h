//
//  Kubrows.h
//  Warframe Terminal
//
//  Created by Patrick Good on 4/9/15.
//  Copyright (c) 2015 Patrick Good. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Kubrows : NSObject
@property (nonatomic) NSString * name;
@property (nonatomic) NSString * health;
@property (nonatomic) NSString * shieldCapacity;
@property (nonatomic) NSString * armor;
@property (nonatomic) NSString * power;
@property (nonatomic) NSString * stamina;
@property (nonatomic) NSString * slash;
@property (nonatomic) NSString * critChance;
@property (nonatomic) NSString * critMultiplier;
@property (nonatomic) NSString * statusChance;
@property (nonatomic) NSString * conclaveRating;
@property (nonatomic) NSString * polarities;
@property (nonatomic) NSString * descrip;
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
          Descrip :(NSString *)descrip;
@end
