//
//  EquipmentDetailViewController.h
//  Warframe Codex
//
//  Created by Patrick Good on 5/3/15.
//  Copyright (c) 2015 Patrick Good. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Equipments.h"
@interface EquipmentDetailViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *Image;
@property (weak, nonatomic) IBOutlet UITextView * details;

@property (weak, nonatomic) Equipments * Equipment;
//@property (weak, nonatomic) Equipments *Equipment;
@end
