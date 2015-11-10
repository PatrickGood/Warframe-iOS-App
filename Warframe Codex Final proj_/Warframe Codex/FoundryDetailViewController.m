//
//  FoundryDetailViewController.m
//  UKMaAPPIOS
//
//  Created by Patrick Good on 4/19/15.
//  Copyright (c) 2015 Patrick Good. All rights reserved.
//
/*
 Abstract:
 File responsible for displaying the Foundrys object in the a view controlled by this controller. Displayes name, category, hours if it has them, and a way to go to webView by clicking button. Also a button to go to the map.
 */

#import "FoundryDetailViewController.h"
#import "WebViewController.h"
#import "ViewController.h"

@interface FoundryDetailViewController ()

@end

@implementation FoundryDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = self.pickedFoundry.name;
    self.acquisition.text = self.pickedFoundry.acquisition;
    self.acquisition.textColor = [UIColor lightGrayColor];
    self.craftPrice.text = self.pickedFoundry.craftPrice;
    self.craftTime.text = self.pickedFoundry.craftTime;
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
