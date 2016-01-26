//
//  EighthViewController.m
//  HMineral
//
//  Created by Gül Ergün on 24/01/16.
//  Copyright © 2016 İrem Ergün. All rights reserved.
//

#import "EighthViewController.h"

@interface EighthViewController ()

@end

@implementation EighthViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title=@"KADROMUZ";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)ozcan:(id)sender{
    WebViewController *web = [self.storyboard instantiateViewControllerWithIdentifier:@"webView"];
    web.url = @"http://hmineral.com/main-cevher-karakterizasyonu.html";
    [self.navigationController pushViewController:web animated:YES];
}


-(IBAction) levent:(id)sender{
    WebViewController *web = [self.storyboard instantiateViewControllerWithIdentifier:@"webView"];
    web.url = @"http://hmineral.com/main-cevher-karakterizasyonu.html";
    [self.navigationController pushViewController:web animated:YES];
}


-(IBAction)zafir:(id)sender{
    WebViewController *web = [self.storyboard instantiateViewControllerWithIdentifier:@"webView"];
    web.url = @"http://www.cs.bilkent.edu.tr/CS299/Guidelines_v2.7.pdf";
    [self.navigationController pushViewController:web animated:YES];
}


-(IBAction)metin:(id)sender{
    WebViewController *web = [self.storyboard instantiateViewControllerWithIdentifier:@"webView"];
    web.url = @"http://hmineral.com/main-cevher-karakterizasyonu.html";
    [self.navigationController pushViewController:web animated:YES];
}


-(IBAction)ilkay:(id)sender{
    WebViewController *web = [self.storyboard instantiateViewControllerWithIdentifier:@"webView"];
    web.url = @"http://hmineral.com/main-cevher-karakterizasyonu.html";
    [self.navigationController pushViewController:web animated:YES];
}


-(IBAction) caner:(id)sender{
    WebViewController *web = [self.storyboard instantiateViewControllerWithIdentifier:@"webView"];
    web.url = @"http://hmineral.com/main-cevher-karakterizasyonu.html";
    [self.navigationController pushViewController:web animated:YES];
}


-(IBAction)ozlem:(id)sender{
    WebViewController *web = [self.storyboard instantiateViewControllerWithIdentifier:@"webView"];
    web.url = @"http://hmineral.com/main-cevher-karakterizasyonu.html";
    [self.navigationController pushViewController:web animated:YES];
}


-(IBAction) orberk:(id)sender{
    WebViewController *web = [self.storyboard instantiateViewControllerWithIdentifier:@"webView"];
    web.url = @"http://hmineral.com/main-cevher-karakterizasyonu.html";
    [self.navigationController pushViewController:web animated:YES];
}


-(IBAction)ahmet:(id)sender{
    WebViewController *web = [self.storyboard instantiateViewControllerWithIdentifier:@"webView"];
    web.url = @"http://hmineral.com/main-cevher-karakterizasyonu.html";
    [self.navigationController pushViewController:web animated:YES];
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
