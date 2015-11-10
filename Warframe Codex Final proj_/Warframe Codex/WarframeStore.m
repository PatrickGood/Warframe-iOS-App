//
//  WarframeStore.m
//  Warframe Terminal
//
//  Created by Patrick Good on 4/9/15.
//  Copyright (c) 2015 Patrick Good. All rights reserved.
//

#import "WarframeStore.h"

#import "Warframes.h"
static WarframeStore *defaultStore = nil;
@implementation WarframeStore
+ (WarframeStore *)defaultStore
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
    // If we already have an instance of WarframeStore...
    if (defaultStore) {
        // Return the old one
        return defaultStore;
    }
    self = [super init];
    if (self) {
        allWarframes = [[NSMutableArray alloc] init];
    }
    return self;
}
- (NSArray *)allWarframes
{
    return allWarframes;
}
- (Warframes *)createName:(NSString *) name
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
                 Descrip :(NSString *)descrip
{
    Warframes *p = [[Warframes alloc] initWithName: name
                                            Health:health
                                    ShieldCapacity:shieldCapacity
                                             Power:power
                                    ShieldRecharge: shieldRecharge
                                             Armor:armor
                                          Stamina :stamina
                                       SprintSpeed:sprintSpeed
                                        Polarities:polarities
                                      AuraPolarity:auraPolarity
                                         ModPoints: modPoints
                                          Descrip :descrip];
    [allWarframes addObject:p];
    return p;
}
-(void) clearStore{
    
    [allWarframes removeAllObjects];
        
}
@end
