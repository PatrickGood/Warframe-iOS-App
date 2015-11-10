//
//  PrimaryStore.h
//  Warframe Terminal
//
//  Created by Patrick Good on 4/9/15.
//  Copyright (c) 2015 Patrick Good. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Primarys;
@interface PrimaryStore : NSObject
{
    NSMutableArray * allPrimarys;
}
+ (PrimaryStore *) defaultStore;
- (NSArray *) allPrimarys;
- (Primarys *) createName: (NSString *) name
                   Impact: (NSString *) impact
                 Puncture:(NSString *) puncture
                    Slash: (NSString *) slash
       CriticalMultiplier: (NSString *)criticalMultiplier
           CriticalChance: (NSString *)criticalChance
                  Descrip:(NSString *) descrip
                     Type: (NSString *) type;
-(void) clearStore;
@end
