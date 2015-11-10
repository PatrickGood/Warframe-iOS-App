//
//  Research.m
//  UKMaAPPIOS
//
//  Created by Patrick Good on 4/11/15.
//  Copyright (c) 2015 Patrick Good. All rights reserved.
//
/*
 Abstract:
 File to implement the a Research object. 
 
 */
#import "Research.h"

@implementation Research
- (id)init {
    return [self initWithLab:@"" Name:@""    Resources:@""  BuildTime:@""  Requirement:@""];
}
- (id)initWithLab:(NSString *) lab
             Name:(NSString *) name
        Resources:(NSString *) resources
        BuildTime:(NSString *) buildTime
      Requirement:(NSString *) requirement
{
    // Call the superclass's designated initializer
    self = [super init];
    // Did the superclass's designated initializer succeed?
    if (self) {
        // Give the instance variables initial values
        [self setLab:lab];
        [self setName:name];
        [self setResources:resources];
        [self setBuildTime:buildTime];
        [self setRequirement:requirement];
    }
    // Return the address of the newly initialized object
    return self;
}
@end
