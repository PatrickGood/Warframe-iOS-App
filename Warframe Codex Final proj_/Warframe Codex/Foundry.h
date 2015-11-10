//
//  .h
//  UKMaAPPIOS
//
//  Created by Patrick Good on 4/11/15.
//  Copyright (c) 2015 Patrick Good. All rights reserved.
//
// Abstract: Object class that is used to store  data as objects.
#import <Foundation/Foundation.h>

@interface  Foundry : NSObject
@property (nonatomic) NSString * category;
@property (nonatomic) NSString * name;
@property (nonatomic) NSString * acquisition;
@property (nonatomic) NSString * craftPrice;
@property (nonatomic) NSString * craftTime;

- (id)initWithCategory:(NSString *) category
          Name:(NSString *) name
          Acquisition:(NSString *) acquisition
          CraftPrice:(NSString *) craftPrice
          CraftTime:(NSString *) craftTime;
@end
