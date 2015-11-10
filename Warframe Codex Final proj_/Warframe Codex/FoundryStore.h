//
//  FoundryStore.h
//  UKMaAPPIOS
//
//  Created by Patrick Good on 4/11/15.
//  Copyright (c) 2015 Patrick Good. All rights reserved.
//
// Class file that creates one instance FoundryStore of NSObject to store Foundry objects in an array.
 #import <Foundation/Foundation.h>
@class Foundry;
@interface FoundryStore : NSObject
{
    NSMutableArray * allFoundrys;
}
+(FoundryStore *) defaultStore;
-(NSArray *) allFoundrys;
-(Foundry *) createCategory:(NSString *) category
                       Name:(NSString *) name
                Acquisition:(NSString *) acquisition
                 CraftPrice:(NSString *) craftPrice
                  CraftTime:(NSString *) craftTime;
-(void) clearStore;
@end
