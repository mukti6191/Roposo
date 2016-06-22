//
//  profile.m
//  PROJECT_ROPOSO
//
//  Created by MACOS on 6/14/16.
//  Copyright © 2016 tops. All rights reserved.
//

#import "profile.h"

@interface profile ()

@end

@implementation profile

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    ar=[[NSMutableArray alloc]initWithObjects:@"1",@"2",@"3", nil];
    ar1=[[NSMutableArray alloc]initWithObjects:@"4",@"5",@"6", nil];
    ar2=[[NSMutableArray alloc]initWithObjects:@"7",@"8",@"9", nil];
    
    UIView *v=[[UIView alloc]initWithFrame:CGRectMake(0,0, self.view.frame.size.width, self.view.frame.size.height /2)];
    v.backgroundColor=[UIColor grayColor] ;
    [self.view addSubview:v];
    
    UILabel *lbl=[[UILabel alloc]initWithFrame:CGRectMake(140,90, self.view.frame.size.width/2, self.view.frame.size.height/4)];
   //lbl.text = [[NSUserDefaults standardUserDefaults] objectForKey:@"name"];
    lbl.text=@"Mukti";
    [v addSubview:lbl];
    
    v1=[[UIView alloc]initWithFrame:CGRectMake(0, 260, self.view.frame.size.width, 40)];
    v1.backgroundColor=[UIColor whiteColor];
    [self.view addSubview:v1];

    // button for profile activity,like,discount
    
//    UIButton *btn1=[[UIButton alloc]initWithFrame:CGRectMake(10, 10, 80, 20)];
//    [btn1 setTitle:@"Activities" forState:UIControlStateNormal];
//    [btn1 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
//    [btn1 addTarget:self action:@selector(myact) forControlEvents:UIControlEventTouchUpInside];
//    btn1.layer.cornerRadius=10;
//    
//    [v1 addSubview:btn1];
//    
//    UIButton *btn2=[[UIButton alloc]initWithFrame:CGRectMake(130, 10, 50,20)];
//    [btn2 setTitle:@"Likes" forState:UIControlStateNormal];
//    [btn2 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
//    btn2.layer.cornerRadius=10;
//    [btn2 addTarget:self action:@selector(mylike) forControlEvents:UIControlEventTouchUpInside];
//    [v1 addSubview:btn2];
//    
//    UIButton *btn3=[[UIButton alloc]initWithFrame:CGRectMake(220, 10, 80, 20)];
//    [btn3 setTitle:@"Discount" forState:UIControlStateNormal];
//    [btn3 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
//    btn3.layer.cornerRadius=10;
//    [btn3 addTarget:self action:@selector(mydiscount) forControlEvents:UIControlEventTouchUpInside];
//    [v1 addSubview:btn3];
    
    // segment for profile activity like discount

    
    NSMutableArray *ar_seg=[[NSMutableArray alloc]initWithObjects:@"Activities",@"Likes",@"Discount", nil];
    
    seg=[[UISegmentedControl alloc]initWithFrame:CGRectMake(0, 0, 500, 60)];
    seg=[[UISegmentedControl alloc]initWithItems:ar_seg];
    seg.backgroundColor=[UIColor whiteColor];
    seg.selectedSegmentIndex=0;
    
    [seg addTarget:self action:@selector(action) forControlEvents:UIControlEventValueChanged];
    
    [v1 addSubview:seg];
    [self action];    
   
    UISwipeGestureRecognizer *swipe=[[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(swipe:)];
    [seg addGestureRecognizer:swipe];

    UISwipeGestureRecognizer *swipe1=[[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(swipe1:)];
    [seg addGestureRecognizer:swipe1];


}

-(void)action
{
    if (seg.selectedSegmentIndex==0)
    {
        [self myact];
    }
    if (seg.selectedSegmentIndex==1)
    {
        [self mylike];
    }
    if (seg.selectedSegmentIndex==2)
    {
        [self mydiscount];
    }

}

-(void)swipe:(UISwipeGestureRecognizer *)swipe
{
    NSInteger index  = seg.selectedSegmentIndex;
    if ([swipe direction] == UISwipeGestureRecognizerDirectionRight)
    {
        ++index;
    }
    
    
    if (0 <= index && index < seg.numberOfSegments)
    {
        seg.selectedSegmentIndex = index;
        //[seg UpdateSelectedSegmentText];
    }
}



-(void)swipe1:(UISwipeGestureRecognizer *)swipe1
{
    NSInteger index  = seg.selectedSegmentIndex;
    
    if ([swipe1 direction] == UISwipeGestureRecognizerDirectionLeft)
    {
        --index;
        seg.selectedSegmentIndex=index;
    }
    
    if (0 <= index && index < seg.numberOfSegments)
    {
        seg.selectedSegmentIndex = index;
        //[seg UpdateSelectedSegmentText];
    }
}


- (void)updateSelectedSegmentText
{
//    int theSegmentIndex = [seg selectedSegmentIndex];
//    NSDictionary *theInfo = [seg objectAtIndex:theSegmentIndex];
//    self.bioTextView.text = [NSString stringWithFormat:@"%@", theInfo [@"sData"]];
//    [self.bioTextView scrollRangeToVisible:NSMakeRange(0, 0)];
}


-(void)myact
{
    v4.hidden=YES;
    v3.hidden=YES;
    
    //NSLog(@"Hello");
    v2=[[UIView alloc]initWithFrame:CGRectMake(0, 300, self.view.frame.size.width, 230)];
    v2.backgroundColor=[UIColor yellowColor];
    [self.view addSubview:v2];
    
    UITableView *tbl=[[UITableView alloc]initWithFrame:CGRectMake(10,10,298,200)];
    tbl.tag=1;
    tbl.delegate=self;
    tbl.dataSource=self;
    tbl.backgroundColor=[UIColor whiteColor];
    [v2 addSubview:tbl];
    [tbl reloadData];
    
    UITableViewCell *c1=[[UITableViewCell alloc]initWithFrame:CGRectMake(15, 15, 250, 50)];
    [tbl addSubview:c1];
    
    UIButton *btnfollow=[[UIButton alloc]initWithFrame:CGRectMake(200, 15, 80, 15)];
    [btnfollow setTitle:@"Following" forState:UIControlStateNormal];
    [btnfollow setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    [btnfollow addTarget:self action:@selector(follow) forControlEvents:UIControlEventTouchUpInside];
    [c1 addSubview:btnfollow];
}

-(void)follow
{
    
}

-(void)mylike
{
    v2.hidden=YES;
    v4.hidden=YES;
    v3=[[UIView alloc]initWithFrame:CGRectMake(0, 300, self.view.frame.size.width, 230)];
    v3.backgroundColor=[UIColor greenColor];
    [self.view addSubview:v3];
    
    UITableView *tbl1=[[UITableView alloc]initWithFrame:CGRectMake(10,10,298,200)];
    tbl1.tag=2;
    tbl1.delegate=self;
    tbl1.dataSource=self;
    tbl1.backgroundColor=[UIColor whiteColor];
    [v3 addSubview:tbl1];
    [tbl1 reloadData];
}

-(void)mydiscount
{
    v2.hidden=YES;
    v3.hidden=YES;
    v4=[[UIView alloc]initWithFrame:CGRectMake(0, 300, self.view.frame.size.width, 230)];
    v4.backgroundColor=[UIColor brownColor];
    [self.view addSubview:v4];
    
    UITableView *tbl2=[[UITableView alloc]initWithFrame:CGRectMake(10,10,298,200)];
    tbl2.tag=3;
    tbl2.delegate=self;
    tbl2.dataSource=self;
    tbl2.backgroundColor=[UIColor whiteColor];
    [v4 addSubview:tbl2];
    [tbl2 reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return [ar count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellid=@"cell";
    UITableViewCell *cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellid];
    
    if (tableView.tag==1) {
        //static NSString *cellid=@"cell";
       // UITableViewCell *cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellid];
        cell.textLabel.text=   [ar objectAtIndex:indexPath.row];
       // return cell;
    }
    else if (tableView.tag==2) {
       // static NSString *cellid=@"cell";
       // UITableViewCell *cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellid];
        cell.textLabel.text=   [ar1 objectAtIndex:indexPath.row];
       // return cell;
    }
    else if (tableView.tag==3)
    {
      //  static NSString *cellid=@"cell";
      //  UITableViewCell *cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellid];
        cell.textLabel.text=   [ar2 objectAtIndex:indexPath.row];
            }
    return cell;

}

@end
