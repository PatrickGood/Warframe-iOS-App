//
//  ResearchDetailViewController.h
//  UKMaAPPIOS
//
//  Created by Patrick Good on 4/19/15.
//  Copyright (c) 2015 Patrick Good. All rights reserved.
//
/*
 Abstract:
 File responsible for displaying the Researchs object in the a view controlled by this controller. Displayes name, category, hours if it has them, and a way to go to webView by clicking button. Also a button to go to the map.
 */
#import <UIKit/UIKit.h>
#import "Research.h"
@interface ResearchDetailViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextView *resources;
@property (weak, nonatomic) IBOutlet UILabel * buildTime;

@property (weak, nonatomic) IBOutlet UILabel *requirement;
@property(nonatomic) Research *pickedResearch;
@end
