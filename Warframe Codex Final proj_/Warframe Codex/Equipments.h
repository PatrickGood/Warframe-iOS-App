//
//  Equipments.h
//  Warframe Terminal
//
//  Created by Patrick Good on 4/9/15.
//  Copyright (c) 2015 Patrick Good. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Equipments : NSObject
@property (nonatomic) NSString * type;
@property (nonatomic) NSString * name;
@property (nonatomic) NSString * edescription;
@property (nonatomic) NSString * acquisition1;
@property (nonatomic) NSString * acquisition2;
@property (nonatomic) NSString * reusability;
- (id)initWithtype:(NSString *) type
                  name:(NSString *) name
            edescription:(NSString *) edescription
            acquisition1:(NSString *)acquisition1
            acquisition2:(NSString *)acquisition2
            reusability:(NSString *) reusability;
@end
