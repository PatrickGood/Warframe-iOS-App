//
//  FoundryStore.m
//  UKMaAPPIOS
//
//  Created by Patrick Good on 4/11/15.
//  Copyright (c) 2015 Patrick Good. All rights reserved.
//
/*
 Abstract:
 Class file responsible for creating an singleton array meaning only one instance of the array exists. Responsible for adding a "store" of Foundry objects as an array. Responsible for adding Foundry objects to the array.
 */
#import "FoundryStore.h"
#import "Foundry.h"
static FoundryStore *defaultStore = nil;
@implementation FoundryStore
+ (FoundryStore *)defaultStore
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
    // If we already have an instance of FoundryStore...
    if (defaultStore) {
        // Return the old one
        return defaultStore;
    }
    self = [super init];
    if (self) {
        allFoundrys = [[NSMutableArray alloc] init];
    }
    return self;
}
- (NSArray *)allFoundrys
{
    return allFoundrys;
}
- (Foundry *)createCategory:(NSString *) category
                       Name:(NSString *) name
                Acquisition:(NSString *) acquisition
                 CraftPrice:(NSString *) craftPrice
                  CraftTime:(NSString *) craftTime{
    //Create Foundry object
    Foundry *b = [[Foundry alloc] initWithCategory:category
                                                      Name:name
                                               Acquisition:acquisition
                                                CraftPrice:craftPrice
                                                 CraftTime:craftTime];
    //Add buidling object to array.
    [allFoundrys addObject:b];
    return b;
}
-(void) clearStore{
    
    //for (int i = 0; i < [allFoundrys count]; i++) {
        [allFoundrys removeAllObjects];
    //}
    
}
@end
