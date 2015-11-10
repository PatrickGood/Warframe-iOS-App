//
//  Resources.h
//  Warframe Terminal
//
//  Created by Patrick Good on 4/9/15.
//  Copyright (c) 2015 Patrick Good. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Resources : NSObject
@property (nonatomic) NSString * resourceName;
@property (nonatomic) NSString * rarity;
- (id)initWithResourceName:(NSString *) resourceName
              Rarity:(NSString *)rarity;
@end
