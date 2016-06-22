//
//  Feed.m
//  PROJECT_ROPOSO
//
//  Created by MACOS on 6/13/16.
//  Copyright © 2016 tops. All rights reserved.
//

#import "Feed.h"
#import "interest.h"
#import "video.h"
#import "post.h"
#import "list.h"

@interface Feed ()

@end

@implementation Feed

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _imgnear.image = [UIImage imageNamed:@"nearyou.png"];
    _imgint.image=[UIImage imageNamed:@"interest_icon.png"];
    _imgvideo.image=[UIImage imageNamed:@"video.png"];
    _imgpost.image=[UIImage imageNamed:@"posts.png"];
    _imglist.image=[UIImage imageNamed:@"list.png"];
    
    UITapGestureRecognizer *tap=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(img1)];
    tap.numberOfTapsRequired=1;
    _imgnear.userInteractionEnabled=YES;
    [_imgnear addGestureRecognizer:tap];
    
    UITapGestureRecognizer *tap1=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(img2)];
    tap1.numberOfTapsRequired=1;
    _imgint.userInteractionEnabled=YES;
    [_imgint addGestureRecognizer:tap1];
    
    UITapGestureRecognizer *tap2=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(img3)];
    tap2.numberOfTapsRequired=1;
    _imgvideo.userInteractionEnabled=YES;
    [_imgvideo addGestureRecognizer:tap2];
    
    UITapGestureRecognizer *tap3=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(img4)];
    tap3.numberOfTapsRequired=1;
    _imgpost.userInteractionEnabled=YES;
    [_imgpost addGestureRecognizer:tap3];
    
    UITapGestureRecognizer *tap4=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(img5)];
    tap4.numberOfTapsRequired=1;
    _imglist.userInteractionEnabled=YES;
    [_imglist addGestureRecognizer:tap4];
    
    
    
    
}

-(void)img1
{
    
}

-(void)img2
{
    interest *in=[self.storyboard instantiateViewControllerWithIdentifier:@"in"];
    [self.navigationController pushViewController:in animated:YES];
}

-(void)img3
{
    video *vid=[self.storyboard instantiateViewControllerWithIdentifier:@"vid"];
    [self.navigationController pushViewController:vid animated:YES];
}

-(void)img4
{
    post *post=[self.storyboard instantiateViewControllerWithIdentifier:@"post"];
    [self.navigationController pushViewController:post animated:YES];
}

-(void)img5
{
    list *list=[self.storyboard instantiateViewControllerWithIdentifier:@"list"];
    [self.navigationController pushViewController:list animated:YES];
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
