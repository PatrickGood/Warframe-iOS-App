//
//  KubrowDetailViewController.m
//  Warframe Codex
//
//  Created by Patrick Good on 5/3/15.
//  Copyright (c) 2015 Patrick Good. All rights reserved.
//

#import "KubrowDetailViewController.h"

@interface KubrowDetailViewController ()

@end

@implementation KubrowDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.details.text = [NSString stringWithFormat:@"HEALTH\n%@\n\nSHIELD CAPACITY\n%@\n\nARMOR\n%@\n\nPOWER\n%@\n\nSTAMINA\n%@\n\nSLASH\n%@\n\nCRIT CHANCE\n%@\n\nCRIT MULTIPLIER\n%@\n\n STATUS CHANCE\n%@\n\nCONCLAVE RATING\n%@\n\nPOLARITIES\n%@\n\nDESCRIPTION\n%@\n\n", self.Kubrow.health,self.Kubrow.shieldCapacity, self.Kubrow.armor, self.Kubrow.power, self.Kubrow.stamina,self.Kubrow.slash,self.Kubrow.critChance, self.Kubrow.critMultiplier, self.Kubrow.statusChance, self.Kubrow.conclaveRating,self.Kubrow.polarities,self.Kubrow.descrip];
    self.details.textColor = [UIColor lightGrayColor];
    self.details.textAlignment = NSTextAlignmentCenter;
    [self.details setFont: [self.details.font fontWithSize:16]];
    self.navigationItem.title = self.Kubrow.name;
    NSString * imageName = [NSString stringWithFormat:@"%@%@", self.Kubrow.name, @".png"];
    NSLog(@"%@", imageName);
    self.Image.image = [UIImage imageNamed:imageName];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any Kubrows that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}


@end
