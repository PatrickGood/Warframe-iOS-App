//
//  ArchwingAbilitys.h
//  Warframe Terminal
//
//  Created by Patrick Good on 4/9/15.
//  Copyright (c) 2015 Patrick Good. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ArchwingAbilitys : NSObject
@property (nonatomic) NSString * archwing;
@property (nonatomic) NSString * name;
@property (nonatomic) NSString * energy;
@property (nonatomic) NSString * descrip;
- (id)initWithArchwing:(NSString *) archwing
                  Name:(NSString *) name
           Energy:(NSString *)energy
          Descrip :(NSString *)descrip;
@end
