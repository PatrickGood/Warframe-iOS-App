//
//  Equipments.m
//  Warframe Terminal
//
//  Created by Patrick Good on 4/9/15.
//  Copyright (c) 2015 Patrick Good. All rights reserved.
//

#import "Equipments.h"

@implementation Equipments
- (id)init {
    return [self initWithtype:@""
                         name:@""
                  edescription:@""
                 acquisition1:@""
                 acquisition2:@""
                  reusability:@""];
}
- (id)initWithtype:(NSString *) type
              name:(NSString *) name
       edescription:(NSString *) edescription
      acquisition1:(NSString *)acquisition1
      acquisition2:(NSString *)acquisition2
       reusability:(NSString *) reusability
{
    // Call the superclass's designated initializer
    self = [super init];
    // Did the superclass's designated initializer succeed?
    if (self) {
        // Give the instance variables initial values
        [self setType:type];
        [self setName:name];
        [self setEdescription:edescription];
        [self setAcquisition1:acquisition1];
        [self setAcquisition2:acquisition2];
        [self setReusability:reusability];
        
    }
    // Return the address of the newly initialized object
    return self;
}
@end
