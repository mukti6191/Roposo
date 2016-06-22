//
//  signup.h
//  PROJECT_ROPOSO
//
//  Created by MACOS on 6/13/16.
//  Copyright © 2016 tops. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface signup : UIViewController<UITextFieldDelegate,UIPickerViewDelegate,UIPickerViewDataSource>

{
    NSMutableArray *ar_gen,*ar_city,*ar_st;
    NSMutableDictionary *dic;
    NSString *gen,*city,*st;
}


@property (weak, nonatomic) IBOutlet UITextField *txtusername;
@property (weak, nonatomic) IBOutlet UITextField *txtpass;
@property (weak, nonatomic) IBOutlet UITextField *txtemail;
@property (weak, nonatomic) IBOutlet UITextField *txtphone;
@property (weak, nonatomic) IBOutlet UITextField *txtdob;
@property (weak, nonatomic) IBOutlet UITextField *txtcity;
@property (weak, nonatomic) IBOutlet UITextField *txtstate;

@property (weak, nonatomic) IBOutlet UITextField *txtgen;
@property (weak, nonatomic) IBOutlet UIButton *btndone;


@property (weak, nonatomic) IBOutlet UIScrollView *scroll;

- (IBAction)btn_signup:(id)sender;
@property (weak, nonatomic) IBOutlet UIView *dtpview;
- (IBAction)btn_done:(id)sender;
- (IBAction)openPickerViewForTextField :(UITextField *)sender;
@end
