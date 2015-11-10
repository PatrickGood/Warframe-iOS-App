//
//  ArchwingAbilityStore.m
//  Warframe Terminal
//
//  Created by Patrick Good on 4/9/15.
//  Copyright (c) 2015 Patrick Good. All rights reserved.
//

#import "ArchwingAbilityStore.h"

#import "ArchwingAbilitys.h"
static ArchwingAbilityStore *defaultStore = nil;
@implementation ArchwingAbilityStore
+ (ArchwingAbilityStore *)defaultStore
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
    // If we already have an instance of ArchwingAbilityStore...
    if (defaultStore) {
        // Return the old one
        return defaultStore;
    }
    self = [super init];
    if (self) {
        allArchwingAbilitys = [[NSMutableArray alloc] init];
    }
    return self;
}
- (NSArray *)allArchwingAbilitys
{
    return allArchwingAbilitys;
}
- (ArchwingAbilitys *)createArchwing:(NSString *) archwing
                       Name:(NSString *) name
                     Energy:(NSString *) energy
                   Descrip :(NSString *) descrip
{
    ArchwingAbilitys *p = [[ArchwingAbilitys alloc] initWithArchwing:archwing
                                                                Name: name
                                                              Energy: energy
                                                            Descrip : descrip];
    [allArchwingAbilitys addObject:p];
    return p;
}
-(void) clearStore{
    
    [allArchwingAbilitys removeAllObjects];
        
}
@end
