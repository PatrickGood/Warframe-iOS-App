//
//  ArchwingAbilityStore.h
//  Warframe Terminal
//
//  Created by Patrick Good on 4/9/15.
//  Copyright (c) 2015 Patrick Good. All rights reserved.
//

#import <Foundation/Foundation.h>
@class ArchwingAbilitys;
@interface ArchwingAbilityStore : NSObject
{
    NSMutableArray * allArchwingAbilitys;
}
+ (ArchwingAbilityStore *) defaultStore;
- (NSArray *) allArchwingAbilitys;
- (ArchwingAbilitys *) createArchwing:(NSString *) archwing
                                 Name:(NSString *) name
                               Energy:(NSString *) energy
                             Descrip :(NSString *) descrip;
-(void) clearStore;
@end
