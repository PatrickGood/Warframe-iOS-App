//
//  ResearchStore.m
//  UKMaAPPIOS
//
//  Created by Patrick Good on 4/11/15.
//  Copyright (c) 2015 Patrick Good. All rights reserved.
//
/*
 Abstract:
 Class file responsible for creating an singleton array meaning only one instance of the array exists. Responsible for adding a "store" of Research objects as an array. Responsible for adding Research objects to the array.
 */
#import "ResearchStore.h"
#import "Research.h"
static ResearchStore *defaultStore = nil;
@implementation ResearchStore
+ (ResearchStore *)defaultStore
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
    // If we already have an instance of ResearchStore...
    if (defaultStore) {
        // Return the old one
        return defaultStore;
    }
    self = [super init];
    if (self) {
        allResearchs = [[NSMutableArray alloc] init];
    }
    return self;
}
- (NSArray *)allResearchs
{
    return allResearchs;
}
- (Research *)createLab:(NSString *) lab
                   Name:(NSString *) name
              Resources:(NSString *) resources
              BuildTime:(NSString *) buildTime
            Requirement:(NSString *) requirement{
    //Create Research object
    Research *b = [[Research alloc] initWithLab:lab
                                           Name:name
                                      Resources:resources
                                      BuildTime:buildTime
                                    Requirement:requirement];
    //Add buidling object to array.
    [allResearchs addObject:b];
    return b;
}
-(void) clearStore{
    
    //for (int i = 0; i < [allResearchs count]; i++) {
        [allResearchs removeAllObjects];
    //}
    
}
@end
