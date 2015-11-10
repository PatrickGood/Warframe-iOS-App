//
//  Sentinels.h
//  Warframe Terminal
//
//  Created by Patrick Good on 4/9/15.
//  Copyright (c) 2015 Patrick Good. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Sentinels : NSObject
@property (nonatomic) NSString * name;
@property (nonatomic) NSString * health;
@property (nonatomic) NSString * shieldCapacity;
@property (nonatomic) NSString * armor;
@property (nonatomic) NSString * power;
@property (nonatomic) NSString * stamina;
@property (nonatomic) NSString * conclaveRating;
@property (nonatomic) NSString * polarities;
@property (nonatomic) NSString * defaultWeapon;
@property (nonatomic) NSString * baseTargetingRange;
@property (nonatomic) NSString * carrierMods;
@property (nonatomic) NSString * descrip;
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
           Descrip:(NSString *) descrip;
@end