//
//  ResourceDetailViewController.m
//  Warframe Codex
//
//  Created by Patrick Good on 5/3/15.
//  Copyright (c) 2015 Patrick Good. All rights reserved.
//

#import "ResourceDetailViewController.h"

@interface ResourceDetailViewController ()

@end

@implementation ResourceDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.Label.text = self.resource.rarity;
    self.navigationItem.title = self.resource.resourceName;
    NSString * imageName = [NSString stringWithFormat:@"%@%@", self.resource.resourceName, @".png"];
    NSLog(@"%@", imageName);
    self.Image.image = [UIImage imageNamed:imageName];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}


@end
