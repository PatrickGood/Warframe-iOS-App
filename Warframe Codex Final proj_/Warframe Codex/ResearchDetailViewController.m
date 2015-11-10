//
//  ResearchDetailViewController.m
//  UKMaAPPIOS
//
//  Created by Patrick Good on 4/19/15.
//  Copyright (c) 2015 Patrick Good. All rights reserved.
//
/*
 Abstract:
 File responsible for displaying the Researchs object in the a view controlled by this controller. Displayes name, category, hours if it has them, and a way to go to webView by clicking button. Also a button to go to the map.
 */

#import "ResearchDetailViewController.h"
#import "ViewController.h"

@interface ResearchDetailViewController ()

@end

@implementation ResearchDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = self.pickedResearch.name;
    self.resources.text = self.pickedResearch.resources;
    self.resources.textColor = [UIColor lightGrayColor];
    self.buildTime.text = self.pickedResearch.buildTime;
    self.requirement.text = self.pickedResearch.requirement;
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
