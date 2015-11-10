//
//  SentinelStore.h
//  Warframe Terminal
//
//  Created by Patrick Good on 4/9/15.
//  Copyright (c) 2015 Patrick Good. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Sentinels;
@interface SentinelStore : NSObject
{
    NSMutableArray * allSentinels;
}
+ (SentinelStore *) defaultStore;
- (NSArray *) allSentinels;
- (Sentinels *) createName: (NSString *) name
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
-(void) clearStore;
@end
