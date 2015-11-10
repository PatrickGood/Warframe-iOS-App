//
//  ResearchStore.h
//  UKMaAPPIOS
//
//  Created by Patrick Good on 4/11/15.
//  Copyright (c) 2015 Patrick Good. All rights reserved.
//
// Class file that creates one instance ResearchStore of NSObject to store Research objects in an array.
 #import <Foundation/Foundation.h>
@class Research;
@interface ResearchStore : NSObject
{
    NSMutableArray * allResearchs;
}
+(ResearchStore *) defaultStore;
-(NSArray *) allResearchs;
-(Research *) createLab:(NSString *) lab
                   Name:(NSString *) name
              Resources:(NSString *) resources
              BuildTime:(NSString *) buildTime
            Requirement:(NSString *) requirement;
-(void) clearStore;
@end
