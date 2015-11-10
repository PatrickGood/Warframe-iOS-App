//
//  SentinelStore.m
//  Warframe Terminal
//
//  Created by Patrick Good on 4/9/15.
//  Copyright (c) 2015 Patrick Good. All rights reserved.
//

#import "SentinelStore.h"

#import "Sentinels.h"
static SentinelStore *defaultStore = nil;
@implementation SentinelStore
+ (SentinelStore *)defaultStore
{
    if (!defaultStore) {
        // Create the singleton
        defaultStore = [[super allocWithZone:NULL] init];
    }
    return defaultStore;
}
// Prevent creation of additional instances
+ (id)allocWithZone:(NSZone *)zone
{
    return [self defaultStore];
}
- (id)init {
    // If we already have an instance of SentinelStore...
    if (defaultStore) {
        // Return the old one
        return defaultStore;
    }
    self = [super init];
    if (self) {
        allSentinels = [[NSMutableArray alloc] init];
    }
    return self;
}
- (NSArray *)allSentinels
{
    return allSentinels;
}
- (Sentinels *)createName: (NSString *) name
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
    Sentinels *p = [[Sentinels alloc] initWithName: name
                                            Health: health
                                    ShieldCapacity: shieldCapacity
                                             Armor: armor
                                             Power: power
                                           Stamina: stamina
                                    ConclaveRating: conclaveRating
                                        Polarities: polarities
                                     DefaultWeapon: defaultWeapon
                                BaseTargetingRange: baseTargetingRange
                                       CarrierMods:carrierMods
                                           Descrip:descrip];
    [allSentinels addObject:p];
    return p;
}
-(void) clearStore{
    
    [allSentinels removeAllObjects];
        
}
@end
