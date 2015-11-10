//
//  Resources.h
//  Warframe Terminal
//
//  Created by Patrick Good on 4/9/15.
//  Copyright (c) 2015 Patrick Good. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Planets : NSObject
@property (nonatomic) NSString * planetName;
@property (nonatomic) int enemyLevelLow;
@property (nonatomic) int enemyLevelHigh;
@property (nonatomic) int missions;
@property (nonatomic) NSString * faction;
@property (nonatomic) NSString * resource1;
@property (nonatomic) NSString * resource2;
@property (nonatomic) NSString * resource3;
@property (nonatomic) NSString * resource4;

- (id)initWithPlanetName:(NSString *) planetName
           EnemyLevelLow: (int) enemyLevelLow EnemyLevelHigh: (int) enemyLevelHigh Missions:(int) missions Faction:(NSString *) faction Resource1:(NSString *)resource1 Resource2:(NSString *)resource2 Resource3:(NSString *)resource3 Resource4:(NSString *)resource4;
@end
