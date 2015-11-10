//
//  WarframeStore.h
//  Warframe Terminal
//
//  Created by Patrick Good on 4/9/15.
//  Copyright (c) 2015 Patrick Good. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Warframes;
@interface WarframeStore : NSObject
{
    NSMutableArray * allWarframes;
}
+ (WarframeStore *) defaultStore;
- (NSArray *) allWarframes;
- (Warframes *) createName:(NSString *) name
                    Health:(NSString *)health
            ShieldCapacity:(NSString *)shieldCapacity
                     Power:(NSString *)power
            ShieldRecharge:(NSString *) shieldRecharge
                     Armor:(NSString *)armor
                  Stamina :(NSString *)stamina
               SprintSpeed:(NSString *)sprintSpeed
                Polarities:(NSString *)polarities
              AuraPolarity:(NSString *)auraPolarity
                 ModPoints:(NSString *) modPoints
                  Descrip :(NSString *)descrip;
-(void) clearStore;
@end
