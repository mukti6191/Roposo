//
//  Shop.h
//  PROJECT_ROPOSO
//
//  Created by MACOS on 6/14/16.
//  Copyright © 2016 tops. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Shop : UIViewController<UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UISegmentedControl *segment;
- (IBAction)btnsegment:(id)sender;
@property (weak, nonatomic) IBOutlet UITableView *tbl;

@end
