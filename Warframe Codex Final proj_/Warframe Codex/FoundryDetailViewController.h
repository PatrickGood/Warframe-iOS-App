//
//  FoundryDetailViewController.h
//  UKMaAPPIOS
//
//  Created by Patrick Good on 4/19/15.
//  Copyright (c) 2015 Patrick Good. All rights reserved.
//
/*
 Abstract:
 File responsible for displaying the Foundrys object in the a view controlled by this controller. Displayes name, category, hours if it has them, and a way to go to webView by clicking button. Also a button to go to the map.
 */
#import <UIKit/UIKit.h>
#import "Foundry.h"
@interface FoundryDetailViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextView *acquisition;
@property (weak, nonatomic) IBOutlet UILabel *craftPrice;

@property (weak, nonatomic) IBOutlet UILabel *craftTime;
@property(nonatomic) Foundry *pickedFoundry;
@end
