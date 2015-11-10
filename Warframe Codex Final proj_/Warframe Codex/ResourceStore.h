//
//  ResourceStore.h
//  Warframe Terminal
//
//  Created by Patrick Good on 4/9/15.
//  Copyright (c) 2015 Patrick Good. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Resources;
@interface ResourceStore : NSObject
{
    NSMutableArray * allResources;
}
+ (ResourceStore *) defaultStore;
- (NSArray *) allResources;
- (Resources *) createResourceName:(NSString *) resourceName Rarity:(NSString *)rarity;
-(void) clearStore;
@end
