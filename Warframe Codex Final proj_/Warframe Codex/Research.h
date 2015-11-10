//
//  .h
//  UKMaAPPIOS
//
//  Created by Patrick Good on 4/11/15.
//  Copyright (c) 2015 Patrick Good. All rights reserved.
//
// Abstract: Object class that is used to store  data as objects.
#import <Foundation/Foundation.h>

@interface  Research : NSObject
@property (nonatomic) NSString * lab;
@property (nonatomic) NSString * name;
@property (nonatomic) NSString * resources;
@property (nonatomic) NSString * buildTime;
@property (nonatomic) NSString * requirement;

- (id)initWithLab:(NSString *) lab
          Name:(NSString *) name
          Resources:(NSString *) resources
          BuildTime:(NSString *) buildTime
          Requirement:(NSString *) requirement;
@end
