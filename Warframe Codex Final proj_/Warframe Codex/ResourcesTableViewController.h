//
//  ResourcesTableViewController.h
//  Homepwner
//
//  Created by Patrick Good on 4/9/15.
//  Copyright (c) 2015 Patrick Good. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Resources.h"
#import "ResourceStore.h"
#import "sqlite3.h"
@interface ResourcesTableViewController : UITableViewController
{
    sqlite3 *db;
    
}
-(NSString*) filePath;
- (void) openDB;
@property (weak, nonatomic) Resources *resource;
@end
