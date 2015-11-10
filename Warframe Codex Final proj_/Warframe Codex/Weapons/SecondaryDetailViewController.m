//
//  SecondaryDetailViewController.m
//  Warframe Codex
//
//  Created by Patrick Good on 5/3/15.
//  Copyright (c) 2015 Patrick Good. All rights reserved.
//

#import "SecondaryDetailViewController.h"

@interface SecondaryDetailViewController ()

@end

@implementation SecondaryDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.details.text = [NSString stringWithFormat:@"IMPACT\n%@\n\nPUNCTURE\n%@\n\nSLASH\n%@\n\nCRITICAL MULTIPLIER\n%@x\n\nCRITICAL CHANCE\n%@\n\nDESCRIPTION\n%@\n\n", self.Secondary.impact,self.Secondary.puncture, self.Secondary.slash, self.Secondary.criticalMultiplier, self.Secondary.criticalChance,self.Secondary.descrip];
    self.details.textColor = [UIColor lightGrayColor];
    self.details.textAlignment = NSTextAlignmentCenter;
    [self.details setFont: [self.details.font fontWithSize:16]];
    self.navigationItem.title = self.Secondary.name;
    NSString * imageName = [NSString stringWithFormat:@"%@%@", self.Secondary.name, @".png"];
    NSLog(@"%@", imageName);
    self.Image.image = [UIImage imageNamed:imageName];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any Secondarys that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}


@end
