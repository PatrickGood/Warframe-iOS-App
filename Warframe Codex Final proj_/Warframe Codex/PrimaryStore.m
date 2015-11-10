//
//  PrimaryStore.m
//  Warframe Terminal
//
//  Created by Patrick Good on 4/9/15.
//  Copyright (c) 2015 Patrick Good. All rights reserved.
//

#import "PrimaryStore.h"

#import "Primarys.h"
static PrimaryStore *defaultStore = nil;
@implementation PrimaryStore
+ (PrimaryStore *)defaultStore
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
    // If we already have an instance of PrimaryStore...
    if (defaultStore) {
        // Return the old one
        return defaultStore;
    }
    self = [super init];
    if (self) {
        allPrimarys = [[NSMutableArray alloc] init];
    }
    return self;
}
- (NSArray *)allPrimarys
{
    return allPrimarys;
}
- (Primarys *)createName: (NSString *) name
                  Impact: (NSString *) impact
                Puncture:(NSString *) puncture
                   Slash: (NSString *) slash
      CriticalMultiplier: (NSString *)criticalMultiplier
          CriticalChance: (NSString *)criticalChance
                 Descrip:(NSString *) descrip
                    Type: (NSString *) type
{
    Primarys *p = [[Primarys alloc] initWithName: name
                                          Impact: impact
                                        Puncture: puncture
                                           Slash:  slash
                              CriticalMultiplier: criticalMultiplier
                                  CriticalChance: criticalChance
                                         Descrip: descrip
                                            Type:  type];
    [allPrimarys addObject:p];
    return p;
}
-(void) clearStore{
    
    [allPrimarys removeAllObjects];
        
}
@end
