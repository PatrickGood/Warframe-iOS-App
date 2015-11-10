//
//  WarframeAbilityStore.m
//  Warframe Terminal
//
//  Created by Patrick Good on 4/9/15.
//  Copyright (c) 2015 Patrick Good. All rights reserved.
//

#import "WarframeAbilityStore.h"

#import "WarframeAbilitys.h"
static WarframeAbilityStore *defaultStore = nil;
@implementation WarframeAbilityStore
+ (WarframeAbilityStore *)defaultStore
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
    // If we already have an instance of WarframeAbilityStore...
    if (defaultStore) {
        // Return the old one
        return defaultStore;
    }
    self = [super init];
    if (self) {
        allWarframeAbilitys = [[NSMutableArray alloc] init];
    }
    return self;
}
- (NSArray *)allWarframeAbilitys
{
    return allWarframeAbilitys;
}
- (WarframeAbilitys *)createWarframe:(NSString *) Warframe
                       Name:(NSString *) name
                     Energy:(NSString *) energy
                   Descrip :(NSString *) descrip
{
    WarframeAbilitys *p = [[WarframeAbilitys alloc] initWithWarframe:Warframe
                                                                Name: name
                                                              Energy: energy
                                                            Descrip : descrip];
    [allWarframeAbilitys addObject:p];
    return p;
}
-(void) clearStore{
    
    [allWarframeAbilitys removeAllObjects];
        
}
@end
