//
//  SecondViewController.m
//  HMineral
//
//  Created by Gül Ergün on 23/01/16.
//  Copyright © 2016 İrem Ergün. All rights reserved.
//

#import "SecondViewController.h"

@implementation SecondViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.navigationItem.title=@"HAKKIMIZDA";
    _hakkindaTV.editable = NO;
    self.hakkindaTV.font=[UIFont fontWithName:@"Helvetica" size: 16.0];
                              
    
    //[_hakkindaTV setTextColor:[UIColor blackColor]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)cevherButtonpressed:(id)sender{
    WebViewController *web = [self.storyboard instantiateViewControllerWithIdentifier:@"webView"];
    web.url = @"http://82.196.10.182/Cevher%20Karakterizasyonu%20ve%20Proses%20Mineraloji.pdf";
    [self.navigationController pushViewController:web animated:YES];
    
}
-(IBAction) akimButtonpressed:(id)sender{
    WebViewController *web = [self.storyboard instantiateViewControllerWithIdentifier:@"webView"];
    web.url = @"http://82.196.10.182/Akim%20Semasi.pdf";
    [self.navigationController pushViewController:web animated:YES];
    
}
-(IBAction)performansButtonpressed:(id)sender{
    WebViewController *web = [self.storyboard instantiateViewControllerWithIdentifier:@"webView"];
    web.url = @"http://82.196.10.182/Optimizasyon.pdf";
    [self.navigationController pushViewController:web animated:YES];
    
}
-(IBAction)devreButtonpressed:(id)sender{
    WebViewController *web = [self.storyboard instantiateViewControllerWithIdentifier:@"webView"];
    web.url = @"http://82.196.10.182/Devre%20Tasarimi.pdf";
    [self.navigationController pushViewController:web animated:YES];
    
}

- (void)viewDidLayoutSubviews {
    [self. hakkindaTV setContentOffset:CGPointZero animated:NO];
}

@end
