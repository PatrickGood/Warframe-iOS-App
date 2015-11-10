//
//  WarframeAbilityStore.h
//  Warframe Terminal
//
//  Created by Patrick Good on 4/9/15.
//  Copyright (c) 2015 Patrick Good. All rights reserved.
//

#import <Foundation/Foundation.h>
@class WarframeAbilitys;
@interface WarframeAbilityStore : NSObject
{
    NSMutableArray * allWarframeAbilitys;
}
+ (WarframeAbilityStore *) defaultStore;
- (NSArray *) allWarframeAbilitys;
- (WarframeAbilitys *) createWarframe:(NSString *) Warframe
                                 Name:(NSString *) name
                               Energy:(NSString *) energy
                             Descrip :(NSString *) descrip;
-(void) clearStore;
@end
