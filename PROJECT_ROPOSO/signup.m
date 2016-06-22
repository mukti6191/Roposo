//
//  signup.m
//  PROJECT_ROPOSO
//
//  Created by MACOS on 6/13/16.
//  Copyright © 2016 tops. All rights reserved.
//

#import "signup.h"
#import "interest.h"
@interface signup ()
{
    IBOutlet UIPickerView *pv;
    UITextField *currentTextField;
    NSMutableArray *pickerViewDataSource;
    CGRect pickerSize;
}
@end

@implementation signup

- (void)viewDidLoad {
    [super viewDidLoad];
    ar_gen= [[NSMutableArray alloc]initWithObjects:@"Gender",@"Male",@"Female", nil];
    ar_city=[[NSMutableArray alloc]initWithObjects:@"City",@"Surat",@"Ahmedabad",@"Vadodra", nil];
    ar_st=[[NSMutableArray alloc]initWithObjects:@"State",@"Gujarat",@"Rajasthan",@"Maharastra", nil];
    
    _scroll.contentSize = CGSizeMake(320, 600);
    _scroll.scrollEnabled = YES;
    _scroll.showsVerticalScrollIndicator = YES;
    
}

-(void)viewWillAppear:(BOOL)animated {
//    pickerSize = CGRectMake(_dtpview.frame.origin.x, _dtpview.frame.origin.y, _dtpview.frame.size.width, _dtpview.frame.size.height);
}

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    currentTextField = textField;
    textField.inputView = pv;
    if (textField.tag == 20)
    {
        pickerViewDataSource = ar_gen;
        [pv performSelector:@selector(reloadData)];
        [self animatePickerViewIn];
    }
    if (textField.tag == 30)
    {
        pickerViewDataSource = ar_city;
        [pv performSelector:@selector(reloadData)];
        [self animatePickerViewIn];
    }
    if (textField.tag == 40)
    {
        pickerViewDataSource = ar_st;
        [pv performSelector:@selector(reloadData)];
        [self animatePickerViewIn];
    }
    return NO;
}


- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return pickerViewDataSource.count;
}

-(void)animatePickerViewIn {
    //[pv setFrame:pickerSize];
}

-(NSString*)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [pickerViewDataSource objectAtIndex:row];
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    [currentTextField setText:[pickerViewDataSource objectAtIndex:row]];
   
}

- (IBAction)btn_signup:(id)sender {
    //dic=[[NSMutableDictionary alloc]init];
//   NSString *str1=[NSString stringWithFormat:@"http://localhost/test/insert.php?s1=%@&s2=%@&s3=%@&s4=%@&s5=%@&s6=%@&s7=%@&s8=%@",_txtusername.text,_txtpass.text,_txtemail.text,_txtphone.text,gen,_txtdob.text,city,st];
//    NSURL *url=[NSURL URLWithString:str1];
//    NSURLRequest *req=[NSURLRequest requestWithURL:url];
//    NSURLSession *session=[NSURLSession sharedSession];
//    NSURLSessionDataTask *task=[session dataTaskWithRequest:req completionHandler:^(NSData *data , NSURLResponse *response, NSError *error) {
//      }];
//    [task resume];
    
    interest *in=[self.storyboard instantiateViewControllerWithIdentifier:@"in"];
    [self.navigationController pushViewController:in animated:YES];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
