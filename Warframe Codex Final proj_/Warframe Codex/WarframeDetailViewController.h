 //
//  WarframeDetailViewController.h
//  Warframe Codex
//
//  Created by Patrick Good on 5/3/15.
//  Copyright (c) 2015 Patrick Good. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Warframes.h"
#import "WarframeAbilitys.h"
#import  "WarframeAbilitystore.h"
@interface WarframeDetailViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *Image;
@property (weak, nonatomic) IBOutlet UITextView * details;

@property (weak, nonatomic) Warframes * Warframe;
@property (nonatomic) NSMutableArray *WarframeAbilities;
@end
