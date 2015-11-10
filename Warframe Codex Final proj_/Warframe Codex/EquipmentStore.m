//
//  EquipmentStore.m
//  Warframe Terminal
//
//  Created by Patrick Good on 4/9/15.
//  Copyright (c) 2015 Patrick Good. All rights reserved.
//

#import "EquipmentStore.h"

#import "Equipments.h"
static EquipmentStore *defaultStore = nil;
@implementation EquipmentStore
+ (EquipmentStore *)defaultStore
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
    // If we already have an instance of EquipmentStore...
    if (defaultStore) {
        // Return the old one
        return defaultStore;
    }
    self = [super init];
    if (self) {
        allEquipments = [[NSMutableArray alloc] init];
    }
    return self;
}
- (NSArray *)allEquipments
{
    return allEquipments;
}
- (Equipments *)createtype:(NSString *) type
                      name:(NSString *) name
               edescription:(NSString *) edescription
              acquisition1:(NSString *)acquisition1
              acquisition2:(NSString *)acquisition2
               reusability:(NSString *) reusability
{
    Equipments *p = [[Equipments alloc] initWithtype: type
                                                name: name
                                         edescription: edescription
                                        acquisition1: acquisition1
                                        acquisition2: acquisition2
                                         reusability: reusability];
    [allEquipments addObject:p];
    return p;
}
-(void) clearStore{
    
    [allEquipments removeAllObjects];
        
}
@end
