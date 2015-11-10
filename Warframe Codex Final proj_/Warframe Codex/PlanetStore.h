//
//  PlanetsStore.h
//  Warframe Terminal
//
//  Created by Patrick Good on 4/9/15.
//  Copyright (c) 2015 Patrick Good. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Planets;
@interface PlanetStore : NSObject
{
    NSMutableArray * allPlanets;
}
+ (PlanetStore *) defaultStore;
- (NSArray *) allPlanets;
- (Planets *) createPlanetName:(NSString *) planetName EnemyLevelLow: (int) enemyLevelLow EnemyLevelHigh: (int) enemyLevelHigh Missions:(int) missions Faction:(NSString *) faction Resource1:(NSString *)resource1 Resource2:(NSString *)resource2 Resource3:(NSString *)resource3 Resource4:(NSString *)resource4;
-(void) clearStore;
@end
