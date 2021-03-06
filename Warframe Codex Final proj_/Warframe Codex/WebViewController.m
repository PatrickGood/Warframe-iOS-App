//
//  WebViewController.m
//  UKMaAPPIOS
//
//  Created by Patrick Good on 4/19/15.
//  Copyright (c) 2015 Patrick Good. All rights reserved.
//
/*
 Abstract:
 File responsible for controlling the webView that is segued with the building detail view controller. Note many of the the functions for the webview are done in the storyboard.
 */
#import "WebViewController.h"

@interface WebViewController ()

@end

@implementation WebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"";

    NSURL * url = [NSURL URLWithString:self.url];
    NSURLRequest * request = [NSURLRequest requestWithURL:url ];
    [self.webView loadRequest:request];
    self.webView.scalesPageToFit = YES;    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
