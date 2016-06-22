//
//  discover.m
//  PROJECT_ROPOSO
//
//  Created by MACOS on 6/14/16.
//  Copyright © 2016 tops. All rights reserved.
//

#import "discover.h"

@interface discover ()

@end

@implementation discover

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    _img_profile.layer.cornerRadius=10;
    _img_profile.image=[UIImage imageNamed:@"video.png"];
    _lbl_name.text = [[NSUserDefaults standardUserDefaults] objectForKey:@"name"];
    _lbl_follow.text=@"Followers";
    _img_discover.image=[UIImage imageNamed:@"list.png"];
    _lbl_discover.text=@"Recently Posted On ..";
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
