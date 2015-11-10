//
//  KubrowStore.m
//  Warframe Terminal
//
//  Created by Patrick Good on 4/9/15.
//  Copyright (c) 2015 Patrick Good. All rights reserved.
//

#import "KubrowStore.h"

#import "Kubrows.h"
static KubrowStore *defaultStore = nil;
@implementation KubrowStore
+ (KubrowStore *)defaultStore
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
    // If we already have an instance of KubrowStore...
    if (defaultStore) {
        // Return the old one
        return defaultStore;
    }
    self = [super init];
    if (self) {
        allKubrows = [[NSMutableArray alloc] init];
    }
    return self;
}
- (NSArray *)allKubrows
{
    return allKubrows;
}
- (Kubrows *)createName:(NSString *) name
                 Health:(NSString *)health
        ShieldCapacity :(NSString *)shieldCapacity
                  Armor:(NSString *)armor
                  Power:(NSString *)power
                Stamina:(NSString *)stamina
                 Slash :(NSString *)slash
            CritChance :(NSString *)critChance
         CritMultiplier:(NSString *)critMultiplier
           StatusChance:(NSString *)statusChance
         ConclaveRating:(NSString *)conclaveRating
             Polarities:(NSString *)polarities
               Descrip :(NSString *)descrip
{
    Kubrows *p = [[Kubrows alloc] initWithName:name
                                        Health:health
                               ShieldCapacity :shieldCapacity
                                         Armor:armor
                                         Power:power
                                       Stamina:stamina
                                        Slash :slash
                                   CritChance :critChance
                                CritMultiplier:critMultiplier
                                  StatusChance:statusChance
                                ConclaveRating:conclaveRating
                                    Polarities:polarities
                                      Descrip :descrip];
    [allKubrows addObject:p];
    return p;
}
-(void) clearStore{
    
    [allKubrows removeAllObjects];
        
}
@end
