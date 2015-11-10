//
//  MeleeDetailViewController.m
//  Warframe Codex
//
//  Created by Patrick Good on 5/3/15.
//  Copyright (c) 2015 Patrick Good. All rights reserved.
//

#import "MeleeDetailViewController.h"

@interface MeleeDetailViewController ()

@end

@implementation MeleeDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.details.text = [NSString stringWithFormat:@"IMPACT\n%@\n\nPUNCTURE\n%@\n\nSLASH\n%@\n\nCRITICAL MULTIPLIER\n%@x\n\nCRITICAL CHANCE\n%@\n\nDESCRIPTION\n%@\n\n", self.Melee.impact,self.Melee.puncture, self.Melee.slash, self.Melee.criticalMultiplier, self.Melee.criticalChance,self.Melee.descrip];
    self.details.textColor = [UIColor lightGrayColor];
    self.details.textAlignment = NSTextAlignmentCenter;
    [self.details setFont: [self.details.font fontWithSize:16]];
    self.navigationItem.title = self.Melee.name;
    NSString * imageName = [NSString stringWithFormat:@"%@%@", self.Melee.name, @".png"];
    NSLog(@"%@", imageName);
    self.Image.image = [UIImage imageNamed:imageName];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any Melees that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}


@end
