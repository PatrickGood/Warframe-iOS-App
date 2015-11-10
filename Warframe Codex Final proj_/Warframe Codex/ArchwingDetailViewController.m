//
//  ArchwingDetailViewController.m
//  Warframe Codex
//
//  Created by Patrick Good on 5/3/15.
//  Copyright (c) 2015 Patrick Good. All rights reserved.
//

#import "ArchwingDetailViewController.h"

@interface ArchwingDetailViewController ()

@end

@implementation ArchwingDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    ArchwingAbilitys *A1 = [self.ArchwingAbilities objectAtIndex:0];
    ArchwingAbilitys *A2 = [self.ArchwingAbilities objectAtIndex:1];
    ArchwingAbilitys *A3 = [self.ArchwingAbilities objectAtIndex:2];
    ArchwingAbilitys *A4 = [self.ArchwingAbilities objectAtIndex:3];
    self.details.text = [NSString stringWithFormat:@"HEALTH\n%@\n\nSHIELD CAPACITY\n%@\n\nARMOR\n%@\n\nPOWER\n%@\n\nFLIGHT SPEED\n%@\n\n STAMINA\n%@\n\nCONCLAVE RATING\n%@\n\nPOLARITIES\n%@\n\nDESCRIPTION\n%@\n\n ABILITIES\n\n\n\n\n%@\n%@ energy \n%@\n\n\n%@\n%@ energy \n%@\n\n\n%@\n%@ energy \n%@\n\n\n%@\n%@ energy \n%@\n\n\n", self.Archwing.health,self.Archwing.shieldCapacity, self.Archwing.armor, self.Archwing.power, self.Archwing.flightSpeed,self.Archwing.stamina,self.Archwing.conclaveRating,self.Archwing.polarities,self.Archwing.descrip,A1.name,A1.energy,A1.descrip,A2.name,A2.energy,A2.descrip,A3.name,A3.energy,A3.descrip,A4.name,A4.energy,A4.descrip];
    self.details.textColor = [UIColor lightGrayColor];
    self.details.textAlignment = NSTextAlignmentCenter;
    [self.details setFont: [self.details.font fontWithSize:16]];
    self.navigationItem.title = self.Archwing.name;
    NSString * imageName = [NSString stringWithFormat:@"%@%@", self.Archwing.name, @".png"];
    NSLog(@"%@", imageName);
    self.Image.image = [UIImage imageNamed:imageName];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any Archwings that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}


@end
