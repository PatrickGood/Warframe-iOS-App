//
//  Resources.m
//  Warframe Terminal
//
//  Created by Patrick Good on 4/9/15.
//  Copyright (c) 2015 Patrick Good. All rights reserved.
//

#import "Planets.h"

@implementation Planets
- (id)init {
    return [self initWithPlanetName:(NSString *) @""
                     EnemyLevelLow:0 EnemyLevelHigh: 0 Missions:0 Faction:@"" Resource1:@"" Resource2:@"" Resource3:@"" Resource4:@""];
}

- (id)initWithPlanetName:(NSString *) planetName
           EnemyLevelLow: (int) enemyLevelLow EnemyLevelHigh: (int) enemyLevelHigh Missions: (int) missions Faction: (NSString *) faction Resource1:(NSString *)resource1 Resource2: (NSString *)resource2 Resource3: (NSString *)resource3 Resource4: (NSString *)resource4
{
    // Call the superclass's designated initializer
    self = [super init];
    // Did the superclass's designated initializer succeed?
    if (self) {
        // Give the instance variables initial values
        [self setPlanetName:planetName];
        [self setEnemyLevelLow:enemyLevelLow];
        [self setEnemyLevelHigh:enemyLevelHigh];
        [self setMissions:missions];
        [self setFaction:faction];
        [self setResource1:resource1];
        [self setResource2:resource2];
        [self setResource3:resource3];
        [self setResource4:resource4];
        
        
    }
    // Return the address of the newly initialized object
    return self;
}
@end
