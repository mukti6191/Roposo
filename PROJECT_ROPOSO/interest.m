//
//  interest.m
//  PROJECT_ROPOSO
//
//  Created by MAC OS on 6/10/16.
//  Copyright © 2016 tops. All rights reserved.
//

#import "interest.h"
#import <QuartzCore/CALayer.h>
#import "mycell.h"
@interface interest ()

@end

@implementation interest

- (void)viewDidLoad {
    [super viewDidLoad];
    
    a=[[NSMutableArray alloc]initWithObjects:@"adasddas1",@"bdsadasd2",@"cdsdsa",@"ddda",@"esadasd",@"fdsa3", nil];
    
    UIView *v=[[UIView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
//    v.backgroundColor=[UIColor blackColor];
    [self.view addSubview:v];
    
    UIButton *btnclose=[[UIButton alloc]initWithFrame:CGRectMake(0, 5, 20, 10)];
    [btnclose setTitle:@"close" forState:UIControlStateNormal];
    [v addSubview:btnclose];
    
    UILabel *lbl=[[UILabel alloc]initWithFrame:CGRectMake(20, 5, 50, 10)];
    lbl.text=@"Edit Your Interest";
    [v addSubview:lbl];
    
    UIButton *btndone=[[UIButton alloc]initWithFrame:CGRectMake(90, 5, 20, 10)];
    [btndone setTitle:@"done" forState:UIControlStateNormal];
    [v addSubview:btndone];
    
    
   tbl =[[UITableView alloc]initWithFrame:CGRectMake(0, 30, self.view.frame.size.width, self.view.frame.size.height-20)];
    
    tbl.delegate=self;
    tbl.dataSource=self;
    tbl.backgroundColor=[UIColor whiteColor];
    [v addSubview:tbl];
 
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [a count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    

    mycell *cell1=[[mycell alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height-50)];
    [tableView dequeueReusableCellWithIdentifier:@"m1"];
    lbl1=[[UILabel alloc]initWithFrame:CGRectMake(10, 10,80, 30)];
    //lbl1.backgroundColor=[UIColor grayColor];
    lbl1.layer.cornerRadius=10;
    lbl1.layer.borderWidth=4.0;
    lbl1.layer.borderColor=[UIColor grayColor].CGColor;
    lbl1.text=[a objectAtIndex:indexPath.row];
    [cell1 addSubview:lbl1];
    
//    lbl2=[[UILabel alloc]initWithFrame:CGRectMake(100, 10,80, 30)];
//    lbl2.backgroundColor=[UIColor grayColor];
//    lbl2.layer.cornerRadius=10;
//    lbl2.layer.borderWidth=4.0;
//    lbl2.layer.borderColor=[UIColor grayColor].CGColor;
//    lbl2.text=[a objectAtIndex:indexPath.row];
//    [cell1 addSubview:lbl2];

    
    return cell1;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
