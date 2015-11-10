//
//  ModCllectionCollectionViewController.h
//  Warframe Codex
//
//  Created by Patrick Good on 5/3/15.
//  Copyright (c) 2015 Patrick Good. All rights reserved.
//


#import <UIKit/UIKit.h>
#import "Mods.h"
#import "ModStore.h"
#import "sqlite3.h"
@interface ModCollectionViewController : UICollectionViewController
{
    sqlite3 *db;
    
}
-(NSString*) filePath;
- (void) openDB;
@property (weak, nonatomic) Mods *Mod;
@property(nonatomic) NSString* pickedCategory;
@end
