//
//  PlanetStore.m
//  Warframe Terminal
//
//  Created by Patrick Good on 4/9/15.
//  Copyright (c) 2015 Patrick Good. All rights reserved.
//

#import "PlanetStore.h"

#import "Planets.h"
static PlanetStore *defaultStore = nil;
@implementation PlanetStore
+ (PlanetStore *)defaultStore
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
    // If we already have an instance of PlanetStore...
    if (defaultStore) {
        // Return the old one
        return defaultStore;
    }
    self = [super init];
    if (self) {
        allPlanets = [[NSMutableArray alloc] init];
    }
    return self;
}
- (NSArray *)allPlanets
{
    return allPlanets;
}
- (Planets *)createPlanetName:(NSString *) planetName EnemyLevelLow: (int) enemyLevelLow EnemyLevelHigh: (int) enemyLevelHigh Missions: (int) missions Faction: (NSString *) faction Resource1:(NSString *)resource1 Resource2: (NSString *)resource2 Resource3: (NSString *)resource3 Resource4: (NSString *)resource4{
    Planets *p = [[Planets alloc] initWithPlanetName: planetName EnemyLevelLow: enemyLevelLow EnemyLevelHigh: enemyLevelHigh Missions: missions Faction: faction Resource1:resource1 Resource2: resource2 Resource3:resource3 Resource4: resource4];
    [allPlanets addObject:p];
    return p;
}
-(void) clearStore{
    
    [allPlanets removeAllObjects];
        
}
@end
