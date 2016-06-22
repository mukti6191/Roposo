//
//  Shop.m
//  PROJECT_ROPOSO
//
//  Created by MACOS on 6/14/16.
//  Copyright © 2016 tops. All rights reserved.
//

#import "Shop.h"

@interface Shop ()

@end

@implementation Shop

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 3;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellid=@"cell";
    UITableViewCell *cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellid];
    
    //UIImage *img=[[UIImage alloc]ini];
    
    UILabel *lbl=[[UILabel alloc]initWithFrame:CGRectMake(10, 10, 50, 20)];
    [cell addSubview:lbl];
    return cell;
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
//    if(_segment.selectedSegmentIndex==0)
//    {
        return 3;
//    }
//    else 
//    {
//        return 2;
//    }
}

- (nullable NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    NSString *sectionName;
//    if(_segment.selectedSegmentIndex==0)
//    {
    switch (section)
    {
        case 0:
            sectionName = NSLocalizedString(@"Shop By Categories", @"Category");
            break;
        case 1:
            sectionName = NSLocalizedString(@"Shop By Sale",@"sale" );
            break;
        case 2:
            sectionName=NSLocalizedString(@"Shop By Trends", @"trends");
            break;
        default:
            sectionName = @"";
            break;
    }
    return sectionName;
//    }
//    else
//    {
//        NSString *sectionName;
//        switch (section)
//        {
//            case 0:
//                sectionName = NSLocalizedString(@"Shop By Categories", @"Category");
//                break;
//            case 1:
//                sectionName = NSLocalizedString(@"Shop By Trends", @"trends");
//                break;
//
//                
//            default:
//                sectionName = @"";
//                break;
//        }    
//        return sectionName;
//    }
    
}


- (IBAction)btnsegment:(id)sender {
}
@end
