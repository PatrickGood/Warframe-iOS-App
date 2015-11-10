//
//  EquipmentDetailViewController.m
//  Warframe Codex
//
//  Created by Patrick Good on 5/3/15.
//  Copyright (c) 2015 Patrick Good. All rights reserved.
//

#import "EquipmentDetailViewController.h"

@interface EquipmentDetailViewController ()

@end

@implementation EquipmentDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.details.text = [NSString stringWithFormat:@"TYPE\n%@\n\nDESCRIPTION\n%@\n\nACQUISITION\n%@\n or \n%@\n\nREUSABILITY\n%@\n\n", self.Equipment.type,self.Equipment.edescription, self.Equipment.acquisition1, self.Equipment.acquisition2, self.Equipment.reusability];
    self.details.textColor = [UIColor lightGrayColor];
    self.details.textAlignment = NSTextAlignmentCenter;
    [self.details setFont: [self.details.font fontWithSize:16]];
    self.navigationItem.title = self.Equipment.name;
    NSString * imageName = [NSString stringWithFormat:@"%@%@", self.Equipment.name, @".png"];
    NSLog(@"%@", imageName);
    self.Image.image = [UIImage imageNamed:imageName];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any Equipments that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}


@end
