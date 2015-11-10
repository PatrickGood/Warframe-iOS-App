//
//  SentinelDetailViewController.m
//  Warframe Codex
//
//  Created by Patrick Good on 5/3/15.
//  Copyright (c) 2015 Patrick Good. All rights reserved.
//

#import "SentinelDetailViewController.h"

@interface SentinelDetailViewController ()

@end

@implementation SentinelDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.details.text = [NSString stringWithFormat:@"HEALTH\n%@\n\nSHIELD CAPACITY\n%@\n\nARMOR\n%@\n\nPOWER\n%@\n\nSTAMINA\n%@\n\nCONCLAVE RATING\n%@\n\nPOLARITIES\n%@\n\nDEFAULT WEAPON\n%@\n\n BASE TARGETING RANGE\n%@\n\nCARRIER MODS\n%@\n\nDESCRIPTION\n%@\n\n", self.Sentinel.health,self.Sentinel.shieldCapacity, self.Sentinel.armor, self.Sentinel.power, self.Sentinel.stamina,self.Sentinel.conclaveRating,self.Sentinel.polarities, self.Sentinel.defaultWeapon, self.Sentinel.baseTargetingRange, self.Sentinel.carrierMods,self.Sentinel.descrip];
    self.details.textColor = [UIColor lightGrayColor];
    self.details.textAlignment = NSTextAlignmentCenter;
    [self.details setFont: [self.details.font fontWithSize:16]];
    self.navigationItem.title = self.Sentinel.name;
    NSString * imageName = [NSString stringWithFormat:@"%@%@", self.Sentinel.name, @".png"];
    NSLog(@"%@", imageName);
    self.Image.image = [UIImage imageNamed:imageName];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any Sentinels that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}


@end
