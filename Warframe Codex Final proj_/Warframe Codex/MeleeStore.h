//
//  MeleeStore.h
//  Warframe Terminal
//
//  Created by Patrick Good on 4/9/15.
//  Copyright (c) 2015 Patrick Good. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Melees;
@interface MeleeStore : NSObject
{
    NSMutableArray * allMelees;
}
+ (MeleeStore *) defaultStore;
- (NSArray *) allMelees;
- (Melees *) createName: (NSString *) name
                   Impact: (NSString *) impact
                 Puncture:(NSString *) puncture
                    Slash: (NSString *) slash
       CriticalMultiplier: (NSString *)criticalMultiplier
           CriticalChance: (NSString *)criticalChance
                  Descrip:(NSString *) descrip
                     Type: (NSString *) type;
-(void) clearStore;
@end
