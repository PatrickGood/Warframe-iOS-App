//
//  ArchwingStore.m
//  Warframe Terminal
//
//  Created by Patrick Good on 4/9/15.
//  Copyright (c) 2015 Patrick Good. All rights reserved.
//

#import "ArchwingStore.h"

#import "Archwings.h"
static ArchwingStore *defaultStore = nil;
@implementation ArchwingStore
+ (ArchwingStore *)defaultStore
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
    // If we already have an instance of ArchwingStore...
    if (defaultStore) {
        // Return the old one
        return defaultStore;
    }
    self = [super init];
    if (self) {
        allArchwings = [[NSMutableArray alloc] init];
    }
    return self;
}
- (NSArray *)allArchwings
{
    return allArchwings;
}
- (Archwings *)createName:(NSString *) name
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
    Archwings *p = [[Archwings alloc] initWithName: name
                                            Health:health
                                   ShieldCapacity :shieldCapacity
                                             Armor:armor
                                             Power:power
                                      FlightSpeed :flightSpeed
                                           Stamina:stamina
                                    ConclaveRating:conclaveRating
                                        Polarities:polarities
                                          Descrip :descrip];
    [allArchwings addObject:p];
    return p;
}
-(void) clearStore{
    
    [allArchwings removeAllObjects];
        
}
@end
