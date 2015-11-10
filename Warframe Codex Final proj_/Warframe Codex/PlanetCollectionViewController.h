//
//  PlanetCllectionCollectionViewController.h
//  Warframe Codex
//
//  Created by Patrick Good on 5/3/15.
//  Copyright (c) 2015 Patrick Good. All rights reserved.
//


#import <UIKit/UIKit.h>
#import "Planets.h"
#import "PlanetStore.h"
#import "sqlite3.h"
@interface PlanetCollectionViewController : UICollectionViewController
{
    sqlite3 *db;
    
}
-(NSString*) filePath;
- (void) openDB;
@property (weak, nonatomic) Planets *planet;
@end
