//
//  ArchwingCllectionCollectionViewController.h
//  Warframe Codex
//
//  Created by Patrick Good on 5/3/15.
//  Copyright (c) 2015 Patrick Good. All rights reserved.
//


#import <UIKit/UIKit.h>
#import "Archwings.h"
#import "ArchwingStore.h"
#import "sqlite3.h"
@interface ArchwingCollectionViewController : UICollectionViewController
{
    sqlite3 *db;
    
}
-(NSString*) filePath;
- (void) openDB;
@property (weak, nonatomic) Archwings *Archwing;

@end
