//
//  MeleeStore.m
//  Warframe Terminal
//
//  Created by Patrick Good on 4/9/15.
//  Copyright (c) 2015 Patrick Good. All rights reserved.
//

#import "MeleeStore.h"

#import "Melees.h"
static MeleeStore *defaultStore = nil;
@implementation MeleeStore
+ (MeleeStore *)defaultStore
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
    // If we already have an instance of MeleeStore...
    if (defaultStore) {
        // Return the old one
        return defaultStore;
    }
    self = [super init];
    if (self) {
        allMelees = [[NSMutableArray alloc] init];
    }
    return self;
}
- (NSArray *)allMelees
{
    return allMelees;
}
- (Melees *)createName: (NSString *) name
                  Impact: (NSString *) impact
                Puncture:(NSString *) puncture
                   Slash: (NSString *) slash
      CriticalMultiplier: (NSString *)criticalMultiplier
          CriticalChance: (NSString *)criticalChance
                 Descrip:(NSString *) descrip
                    Type: (NSString *) type
{
    Melees *p = [[Melees alloc] initWithName: name
                                          Impact: impact
                                        Puncture: puncture
                                           Slash:  slash
                              CriticalMultiplier: criticalMultiplier
                                  CriticalChance: criticalChance
                                         Descrip: descrip
                                            Type:  type];
    [allMelees addObject:p];
    return p;
}
-(void) clearStore{
    
    [allMelees removeAllObjects];
        
}
@end
