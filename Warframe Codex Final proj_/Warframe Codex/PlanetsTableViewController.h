//
//  PlanetsTableViewController.h
//  Homepwner
//
//  Created by Patrick Good on 4/9/15.
//  Copyright (c) 2015 Patrick Good. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Planets.h"
#import "PlanetStore.h"
#import "sqlite3.h"
@interface PlanetsTableViewController : UITableViewController
{
    sqlite3 *db;
    
}
-(NSString*) filePath;
- (void) openDB;
@property (weak, nonatomic) NSString *planetName;
@property (weak, nonatomic) Planets *planet;
@property ( nonatomic) NSMutableArray *name;
@property ( nonatomic) NSMutableArray *survival;
@property ( nonatomic) NSMutableArray *level;
@end
