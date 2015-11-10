//
//  PlanetTableViewCell.h
//  Warframe Codex
//
//  Created by Patrick Good on 5/4/15.
//  Copyright (c) 2015 Patrick Good. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PlanetTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *name;
@property (weak, nonatomic) IBOutlet UILabel *survival;
@property (weak, nonatomic) IBOutlet UILabel *level;

@end
