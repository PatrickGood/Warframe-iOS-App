//
//  PlanetDetailViewController.m
//  Warframe Codex
//
//  Created by Patrick Good on 5/3/15.
//  Copyright (c) 2015 Patrick Good. All rights reserved.
//

#import "PlanetDetailViewController.h"

@interface PlanetDetailViewController ()

@end

@implementation PlanetDetailViewController

- (void)viewDidLoad {
    [self.parentViewController.navigationItem setTitle:self.planet.planetName];
    //self.navigationItem.title = self.planet.planetName;
   //NSLog(@"%@", self.navigationItem.title);
    [super viewDidLoad];
 
    self.Label1.text = [NSString stringWithFormat:@"%d      -",self.planet.enemyLevelLow];
    self.Label2.text = [NSString stringWithFormat:@"%d",self.planet.enemyLevelHigh];
    self.Label3.text = [NSString stringWithFormat:@"%d",self.planet.missions];
    self.Label4.text = self.planet.faction;
    self.Label5.text = self.planet.resource1;
    self.Label6.text = self.planet.resource2;
    self.Label7.text = self.planet.resource3;
    self.Label8.text = self.planet.resource4;
    
    //self.title = self.planet.planetName;
    NSString * imageName = [NSString stringWithFormat:@"%@%@", self.planet.planetName, @".png"];
    NSLog(@"%@", imageName);
    self.Image.image = [UIImage imageNamed:imageName];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any Planets that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}


@end
