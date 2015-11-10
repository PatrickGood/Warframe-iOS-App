//
//  ViewController.m
//  Warframe Codex
//
//  Created by Patrick Good on 5/3/15.
//  Copyright (c) 2015 Patrick Good. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
WebViewController *webViewController = nil;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)WikiButton:(id)sender {
}

- (IBAction)WarframeButton:(id)sender {
}
- (IBAction)BuilderButton:(id)sender {
}
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    if ( [[segue identifier] isEqualToString:@"Wiki"] ) {
        
        webViewController = [segue destinationViewController];
        webViewController.url = @"http://warframe.wikia.com/wiki/WARFRAME_Wiki";
        //Send url to another controller.
        
        // In order to manipulate the destination view controller
    }
    if ( [[segue identifier] isEqualToString:@"Warframe"] ) {
        
        webViewController = [segue destinationViewController];
        webViewController.url = @"https://warframe.com/";
        //Send url to another controller.
        
        // In order to manipulate the destination view controller
    }
    if ( [[segue identifier] isEqualToString:@"Builder"] ) {
        
        webViewController = [segue destinationViewController];
        webViewController.url = @"http://warframe-builder.com/";
        //Send url to another controller.
        
        // In order to manipulate the destination view controller
    }
}

@end
