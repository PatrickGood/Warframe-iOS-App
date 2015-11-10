//
//  SentinelCllectionCollectionViewController.h
//  Warframe Codex
//
//  Created by Patrick Good on 5/3/15.
//  Copyright (c) 2015 Patrick Good. All rights reserved.
//


#import <UIKit/UIKit.h>
#import "Sentinels.h"
#import "SentinelStore.h"
#import "sqlite3.h"
@interface SentinelCollectionViewController : UICollectionViewController
{
    sqlite3 *db;
    
}
-(NSString*) filePath;
- (void) openDB;
@property (weak, nonatomic) Sentinels *Sentinel;
@end
