//
//  ResourceStore.m
//  Warframe Terminal
//
//  Created by Patrick Good on 4/9/15.
//  Copyright (c) 2015 Patrick Good. All rights reserved.
//

#import "ResourceStore.h"

#import "Resources.h"
static ResourceStore *defaultStore = nil;
@implementation ResourceStore
+ (ResourceStore *)defaultStore
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
    // If we already have an instance of ResourceStore...
    if (defaultStore) {
        // Return the old one
        return defaultStore;
    }
    self = [super init];
    if (self) {
        allResources = [[NSMutableArray alloc] init];
    }
    return self;
}
- (NSArray *)allResources
{
    return allResources;
}
- (Resources *)createResourceName:(NSString *) resourceName Rarity:(NSString *)rarity{
    Resources *p = [[Resources alloc] initWithResourceName: resourceName Rarity:rarity];
    [allResources addObject:p];
    return p;
}
-(void) clearStore{
    
    [allResources removeAllObjects];
        
}
@end
