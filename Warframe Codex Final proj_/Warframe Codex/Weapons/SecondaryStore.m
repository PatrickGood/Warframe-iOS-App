//
//  SecondaryStore.m
//  Warframe Terminal
//
//  Created by Patrick Good on 4/9/15.
//  Copyright (c) 2015 Patrick Good. All rights reserved.
//

#import "SecondaryStore.h"

#import "Secondarys.h"
static SecondaryStore *defaultStore = nil;
@implementation SecondaryStore
+ (SecondaryStore *)defaultStore
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
    // If we already have an instance of SecondaryStore...
    if (defaultStore) {
        // Return the old one
        return defaultStore;
    }
    self = [super init];
    if (self) {
        allSecondarys = [[NSMutableArray alloc] init];
    }
    return self;
}
- (NSArray *)allSecondarys
{
    return allSecondarys;
}
- (Secondarys *)createName: (NSString *) name
                  Impact: (NSString *) impact
                Puncture:(NSString *) puncture
                   Slash: (NSString *) slash
      CriticalMultiplier: (NSString *)criticalMultiplier
          CriticalChance: (NSString *)criticalChance
                 Descrip:(NSString *) descrip
                    Type: (NSString *) type
{
    Secondarys *p = [[Secondarys alloc] initWithName: name
                                          Impact: impact
                                        Puncture: puncture
                                           Slash:  slash
                              CriticalMultiplier: criticalMultiplier
                                  CriticalChance: criticalChance
                                         Descrip: descrip
                                            Type:  type];
    [allSecondarys addObject:p];
    return p;
}
-(void) clearStore{
    
    [allSecondarys removeAllObjects];
        
}
@end
