//
//  Secondary.h
//  Warframe Terminal
//
//  Created by Patrick Good on 4/9/15.
//  Copyright (c) 2015 Patrick Good. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Secondarys : NSObject
@property (nonatomic) NSString * name;
@property (nonatomic) NSString * impact;
@property (nonatomic) NSString * puncture;
@property (nonatomic) NSString * slash;
@property (nonatomic) NSString * criticalMultiplier;
@property (nonatomic) NSString * criticalChance;
@property (nonatomic) NSString * descrip;
@property (nonatomic) NSString * type;
- (id)initWithName: (NSString *) name
            Impact: (NSString *) impact
          Puncture:(NSString *) puncture
             Slash: (NSString *) slash
CriticalMultiplier: (NSString *)criticalMultiplier
    CriticalChance: (NSString *)criticalChance
           Descrip:(NSString *) descrip
              Type: (NSString *) type;
@end