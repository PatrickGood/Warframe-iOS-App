 //
//  MeleeDetailViewController.h
//  Warframe Codex
//
//  Created by Patrick Good on 5/3/15.
//  Copyright (c) 2015 Patrick Good. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Melees.h"
@interface MeleeDetailViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *Image;
@property (weak, nonatomic) IBOutlet UITextView * details;

@property (weak, nonatomic) Melees * Melee;
//@property (weak, nonatomic) Melees *Melee;
@end
