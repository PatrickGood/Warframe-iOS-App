//
//  Mods.h
//  Warframe Terminal
//
//  Created by Patrick Good on 4/9/15.
//  Copyright (c) 2015 Patrick Good. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Mods : NSObject
@property (nonatomic) NSString * name;
@property (nonatomic) NSString * type;
- (id)initWithName:(NSString *)name
              Type:(NSString *)type;
@end
