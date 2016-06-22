//
//  tabwindow.m
//  PROJECT_ROPOSO
//
//  Created by MACOS on 6/13/16.
//  Copyright © 2016 tops. All rights reserved.
//

#import "tabwindow.h"

@interface tabwindow ()

@end

@implementation tabwindow

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSUserDefaults *d=[NSUserDefaults standardUserDefaults];
    [d valueForKey:@"name"];
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
