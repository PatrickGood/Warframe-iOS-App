//
//  KubrowStore.h
//  Warframe Terminal
//
//  Created by Patrick Good on 4/9/15.
//  Copyright (c) 2015 Patrick Good. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Kubrows;
@interface KubrowStore : NSObject
{
    NSMutableArray * allKubrows;
}
+ (KubrowStore *) defaultStore;
- (NSArray *) allKubrows;
- (Kubrows *) createName:(NSString *) name
                  Health:(NSString *)health
         ShieldCapacity :(NSString *)shieldCapacity
                   Armor:(NSString *)armor
                   Power:(NSString *)power
                 Stamina:(NSString *)stamina
                  Slash :(NSString *)slash
             CritChance :(NSString *)critChance
          CritMultiplier:(NSString *)critMultiplier
            StatusChance:(NSString *)statusChance
          ConclaveRating:(NSString *)conclaveRating
              Polarities:(NSString *)polarities
                Descrip :(NSString *)descrip;
-(void) clearStore;
@end
