//
//  interest.h
//  PROJECT_ROPOSO
//
//  Created by MAC OS on 6/10/16.
//  Copyright © 2016 tops. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface interest : UIViewController<UITableViewDataSource,UITableViewDelegate>
{
    NSMutableArray *a;
    UILabel *lbl1,*lbl2;
    UITableViewCell *cell;
    UITableView *tbl;
}
@property (weak, nonatomic) IBOutlet UILabel *lbl;

@end
