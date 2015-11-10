//
//  ResourceDetailViewController.h
//  Warframe Codex
//
//  Created by Patrick Good on 5/3/15.
//  Copyright (c) 2015 Patrick Good. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Resources.h"
@interface ResourceDetailViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *Image;
@property (weak, nonatomic) IBOutlet UILabel *Label;
@property (weak, nonatomic) Resources * resource;
//@property (weak, nonatomic) Resources *resource;
@end
