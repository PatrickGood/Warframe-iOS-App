//
//  WarframeAbilitys.h
//  Warframe Terminal
//
//  Created by Patrick Good on 4/9/15.
//  Copyright (c) 2015 Patrick Good. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WarframeAbilitys : NSObject
@property (nonatomic) NSString * Warframe;
@property (nonatomic) NSString * name;
@property (nonatomic) NSString * energy;
@property (nonatomic) NSString * descrip;
- (id)initWithWarframe:(NSString *) Warframe
                  Name:(NSString *) name
           Energy:(NSString *)energy
          Descrip :(NSString *)descrip;
@end
