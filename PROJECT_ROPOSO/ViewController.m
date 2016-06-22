//
//  ViewController.m
//  PROJECT_ROPOSO
//
//  Created by MAC OS on 6/10/16.
//  Copyright © 2016 tops. All rights reserved.
//

#import "ViewController.h"
#import "interest.h"
#import "signup.h"
#import "tabwindow.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _img.image=[UIImage imageNamed:@"logo.jpeg"];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnsignup:(id)sender
{
    signup *in=[self.storyboard instantiateViewControllerWithIdentifier:@"sign"];
    [self.navigationController pushViewController:in animated:YES];
  
}

- (IBAction)btnlog:(id)sender
{
//    a=[[NSMutableArray alloc]init];
//    NSString *str=[NSString stringWithFormat:@"http://localhost/test/select.php?s1=%@&s2=%@",_txtname.text,_txtpass.text];
//    NSURL *url=[NSURL URLWithString:str];
//    NSURLRequest *req=[NSURLRequest requestWithURL:url];
//    NSURLSession *session=[NSURLSession sharedSession];
//    NSURLSessionDataTask *task=[session dataTaskWithRequest:req completionHandler:^(NSData *data , NSURLResponse *response, NSError *error) {
//        a=[NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
//    
//       
//        for (NSDictionary *d in a)
//        {
////            NSString *str3=[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
////            NSLog(@"%@",str3);
////            NSLog(@"hey");
//            NSString *name=[d valueForKey:@"username"];
//            NSString *pass=[d valueForKey:@"password"];
//            NSString *txtnames=_txtname.text;
//            NSString *txtpass=_txtpass.text;
//            
//            if([name isEqualToString:   txtnames] && [pass isEqualToString: txtpass])
//            {
//                dispatch_async(dispatch_get_main_queue(), ^{
                    NSUserDefaults *d=[NSUserDefaults standardUserDefaults];
                    [d setValue:_txtname.text forKey:@"name"];
                    tabwindow *tabbar=[self.storyboard instantiateViewControllerWithIdentifier:@"tab"];
                    [self.navigationController pushViewController:tabbar animated:YES];
//                });
//                
//            }
//            else
//            {
//                NSLog(@"Error");
//            }
//        
//        }
//    }];
//        
//    
//    [task resume];
//
//    NSUserDefaults *d=[NSUserDefaults standardUserDefaults];
//    [d setValue:_txtname.text forKey:@"name"];
//    tabwindow *tabbar=[self.storyboard instantiateViewControllerWithIdentifier:@"tab"];
//    [self.navigationController pushViewController:tabbar animated:YES];
}
@end
