//
//  EquipmentStore.h
//  Warframe Terminal
//
//  Created by Patrick Good on 4/9/15.
//  Copyright (c) 2015 Patrick Good. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Equipments;
@interface EquipmentStore : NSObject
{
    NSMutableArray * allEquipments;
}
+ (EquipmentStore *) defaultStore;
- (NSArray *) allEquipments;
- (Equipments *) createtype:(NSString *) type
                       name:(NSString *) name
                edescription:(NSString *) edescription
               acquisition1:(NSString *)acquisition1
               acquisition2:(NSString *)acquisition2
                reusability:(NSString *) reusability;
-(void) clearStore;
@end
