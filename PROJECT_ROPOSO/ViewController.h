//
//  ViewController.h
//  PROJECT_ROPOSO
//
//  Created by MAC OS on 6/10/16.
//  Copyright © 2016 tops. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ViewController : UIViewController

{
    NSMutableArray *a;
}
@property (weak, nonatomic) IBOutlet UITextField *txtname;
@property (weak, nonatomic) IBOutlet UITextField *txtpass;
@property (weak, nonatomic) IBOutlet UIButton *btnlogin;
- (IBAction)btnsignup:(id)sender;
- (IBAction)btnlog:(id)sender;
@property (weak, nonatomic) IBOutlet UIImageView *img;


@end

