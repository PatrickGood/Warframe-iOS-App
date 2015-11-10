 //
//  ArchwingDetailViewController.h
//  Warframe Codex
//
//  Created by Patrick Good on 5/3/15.
//  Copyright (c) 2015 Patrick Good. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Archwings.h"
#import "ArchwingAbilitys.h"
#import  "ArchwingAbilitystore.h"
@interface ArchwingDetailViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *Image;
@property (weak, nonatomic) IBOutlet UITextView * details;

@property (weak, nonatomic) Archwings * Archwing;
@property (nonatomic) NSMutableArray *ArchwingAbilities;
@end
