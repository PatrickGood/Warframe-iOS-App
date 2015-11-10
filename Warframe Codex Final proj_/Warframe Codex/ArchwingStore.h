//
//  ArchwingStore.h
//  Warframe Terminal
//
//  Created by Patrick Good on 4/9/15.
//  Copyright (c) 2015 Patrick Good. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Archwings;
@interface ArchwingStore : NSObject
{
    NSMutableArray * allArchwings;
}
+ (ArchwingStore *) defaultStore;
- (NSArray *) allArchwings;
- (Archwings *) createName:(NSString *) name
                    Health:(NSString *)health
           ShieldCapacity :(NSString *)shieldCapacity
                     Armor:(NSString *)armor
                     Power:(NSString *)power
              FlightSpeed :(NSString *)flightSpeed
                   Stamina:(NSString *)stamina
            ConclaveRating:(NSString *)conclaveRating
                Polarities:(NSString *)polarities
                  Descrip :(NSString *)descrip;
-(void) clearStore;
@end
