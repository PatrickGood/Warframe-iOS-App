//
//  Foundry.m
//  UKMaAPPIOS
//
//  Created by Patrick Good on 4/11/15.
//  Copyright (c) 2015 Patrick Good. All rights reserved.
//
/*
 Abstract:
 File to implement the a Foundry object. 
 
 */
#import "Foundry.h"

@implementation Foundry
- (id)init {
    return [self initWithCategory:@"" Name:@""    Acquisition:@""  CraftPrice:@""  CraftTime:@""];
}
- (id)initWithCategory:(NSString *) category
                  Name:(NSString *) name
           Acquisition:(NSString *) acquisition
            CraftPrice:(NSString *) craftPrice
             CraftTime:(NSString *) craftTime
{
    // Call the superclass's designated initializer
    self = [super init];
    // Did the superclass's designated initializer succeed?
    if (self) {
        // Give the instance variables initial values
        [self setCategory:category];
        [self setName:name];
        [self setAcquisition:acquisition];
        [self setCraftPrice:craftPrice];
        [self setCraftTime:craftTime];
    }
    // Return the address of the newly initialized object
    return self;
}
@end
