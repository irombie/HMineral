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
    //[_hakkindaTV setTextColor:[UIColor blackColor]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)cevherButtonpressed:(id)sender{
    WebViewController *web = [self.storyboard instantiateViewControllerWithIdentifier:@"webView"];
    web.url = @"https://www.docdroid.net/uEqeKyT/cevher-karakterizasyonu-ve-proses-mineraloji.pdf.html";
    [self.navigationController pushViewController:web animated:YES];
    
}
-(IBAction) akimButtonpressed:(id)sender{
    WebViewController *web = [self.storyboard instantiateViewControllerWithIdentifier:@"webView"];
    web.url = @"http://hmineral.com/main-akis-semasi-gelistirme.html";
    [self.navigationController pushViewController:web animated:YES];
    
}
-(IBAction)performansButtonpressed:(id)sender{
    WebViewController *web = [self.storyboard instantiateViewControllerWithIdentifier:@"webView"];
    web.url = @"http://hmineral.com/main-performans-degerlendirme.html";
    [self.navigationController pushViewController:web animated:YES];
    
}
-(IBAction)devreButtonpressed:(id)sender{
    WebViewController *web = [self.storyboard instantiateViewControllerWithIdentifier:@"webView"];
    web.url = @"http://hmineral.com/main-devre-tasarimi.html";
    [self.navigationController pushViewController:web animated:YES];
    
}



@end
