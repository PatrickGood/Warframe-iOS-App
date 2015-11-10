//
//  WarframeDetailViewController.m
//  Warframe Codex
//
//  Created by Patrick Good on 5/3/15.
//  Copyright (c) 2015 Patrick Good. All rights reserved.
//

#import "WarframeDetailViewController.h"

@interface WarframeDetailViewController ()

@end

@implementation WarframeDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    WarframeAbilitys *A1 = [self.WarframeAbilities objectAtIndex:0];
    WarframeAbilitys *A2 = [self.WarframeAbilities objectAtIndex:1];
    WarframeAbilitys *A3 = [self.WarframeAbilities objectAtIndex:2];
    WarframeAbilitys *A4 = [self.WarframeAbilities objectAtIndex:3];
    self.details.text = [NSString stringWithFormat:@"HEALTH\n%@\n\nSHIELD CAPACITY\n%@\n\nPOWER\n%@\n\nSHIELD RECHARGE PER SEC\n%@\n\nARMOR\n%@\n\nSTAMINA\n%@\n\nSPRINT SPEED\n%@\n\nPOLARITIES\n%@\n\nAURA POLARITY\n%@\n\nMOD POINTS\n%@\n\nDESCRIPTION\n%@\n\n ABILITIES\n\n\n\n\n%@\n%@ energy \n%@\n\n\n%@\n%@ energy \n%@\n\n\n%@\n%@ energy \n%@\n\n\n%@\n%@ energy \n%@\n\n\n", self.Warframe.health,self.Warframe.shieldCapacity, self.Warframe.power, self.Warframe.shieldRecharge, self.Warframe.armor,self.Warframe.stamina,self.Warframe.sprintSpeed,self.Warframe.polarities,self.Warframe.auraPolarity,self.Warframe.modPoints,self.Warframe.descrip,A1.name,A1.energy,A1.descrip,A2.name,A2.energy,A2.descrip,A3.name,A3.energy,A3.descrip,A4.name,A4.energy,A4.descrip];
    self.details.textColor = [UIColor lightGrayColor];
    self.details.textAlignment = NSTextAlignmentCenter;
    [self.details setFont: [self.details.font fontWithSize:16]];
    self.navigationItem.title = self.Warframe.name;
    NSString * imageName = [NSString stringWithFormat:@"%@%@", self.Warframe.name, @".png"];
    NSLog(@"%@", imageName);
    self.Image.image = [UIImage imageNamed:imageName];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any Warframes that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}


@end
