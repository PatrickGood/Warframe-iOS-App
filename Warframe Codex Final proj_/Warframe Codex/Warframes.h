//
//  Warframes.h
//  Warframe Terminal
//
//  Created by Patrick Good on 4/9/15.
//  Copyright (c) 2015 Patrick Good. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Warframes : NSObject
@property (nonatomic) NSString * name;
@property (nonatomic) NSString * health;
@property (nonatomic) NSString * shieldCapacity;
@property (nonatomic) NSString * power;
@property (nonatomic) NSString * shieldRecharge;
@property (nonatomic) NSString * armor;
@property (nonatomic) NSString * stamina;
@property (nonatomic) NSString * sprintSpeed;
@property (nonatomic) NSString * polarities;
@property (nonatomic) NSString * auraPolarity;
@property (nonatomic) NSString * modPoints;
@property (nonatomic) NSString * descrip;
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
          Descrip :(NSString *)descrip;
@end
