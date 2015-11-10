//
//  ResearchsTableViewController.h
//  UKMaAPPIOS
//
//  Created by Patrick Good on 4/15/15.
//  Copyright (c) 2015 Patrick Good. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Research.h"
#import "ResearchStore.h"
#import "sqlite3.h"
/*
 Abstract:
 File responsible for displaying the Researchs objects that were sorted by their category in a table view.
 */
@interface ResearchsTableViewController : UITableViewController
{
    sqlite3 *db;
    
}
-(NSString*) filePath;
- (void) openDB;

@property (nonatomic) NSMutableArray * CategoryObjects; 

@property (nonatomic) NSString * pickedCategory2;//Name of picked category
@property (nonatomic) Research *selectedResearch;
@end
