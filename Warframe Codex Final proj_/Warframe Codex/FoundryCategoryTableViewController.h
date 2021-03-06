//
//  CategoryTableViewController.h
//  UKMaAPPIOS
//
//  Created by Patrick Good on 4/15/15.
//  Copyright (c) 2015 Patrick Good. All rights reserved.
//
/*
Abstract:
File responsible; for displaying the categories that are listed in the file.
*/

#import <UIKit/UIKit.h>
#import "Foundry.h"
#import "FoundryStore.h"
#import "sqlite3.h"
@interface FoundryCategoryTableViewController : UITableViewController
{
    sqlite3 *db;

}
-(NSString*) filePath;
- (void) openDB;

@property (nonatomic) NSString * pickedCategory;
@property (nonatomic) NSMutableArray * categories;
@end
