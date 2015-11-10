//
//  ModStore.h
//  Warframe Terminal
//
//  Created by Patrick Good on 4/9/15.
//  Copyright (c) 2015 Patrick Good. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Mods;
@interface ModStore : NSObject
{
    NSMutableArray * allMods;
}
+ (ModStore *) defaultStore;
- (NSArray *) allMods;
- (Mods *) createName:(NSString *)name
                      Type:(NSString *)type;
-(void) clearStore;
@end
