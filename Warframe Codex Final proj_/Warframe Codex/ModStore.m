//
//  ModStore.m
//  Warframe Terminal
//
//  Created by Patrick Good on 4/9/15.
//  Copyright (c) 2015 Patrick Good. All rights reserved.
//

#import "ModStore.h"

#import "Mods.h"
static ModStore *defaultStore = nil;
@implementation ModStore
+ (ModStore *)defaultStore
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
    // If we already have an instance of ModStore...
    if (defaultStore) {
        // Return the old one
        return defaultStore;
    }
    self = [super init];
    if (self) {
        allMods = [[NSMutableArray alloc] init];
    }
    return self;
}
- (NSArray *)allMods
{
    return allMods;
}
- (Mods *)createName:(NSString *)name
                Type:(NSString *)type
{
    Mods *p = [[Mods alloc] initWithName:name
                                    Type:type];
    [allMods addObject:p];
    return p;
}
-(void) clearStore{
    
    [allMods removeAllObjects];
        
}
@end
