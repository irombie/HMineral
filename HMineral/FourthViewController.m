//
//  FourthViewController.m
//  HMineral
//
//  Created by Gül Ergün on 24/01/16.
//  Copyright © 2016 İrem Ergün. All rights reserved.
//

#import "FourthViewController.h"

@implementation FourthViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.navigationItem.title=@"LABORATUVAR";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)malzemeButtonpressed:(id)sender{
    WebViewController *web = [self.storyboard instantiateViewControllerWithIdentifier:@"webView"];
    web.url = @"http://hmineral.com/main-cevher-karakterizasyonu.html";
    [self.navigationController pushViewController:web animated:YES];
}
-(IBAction) kirmaButtonpressed:(id)sender{
    WebViewController *web = [self.storyboard instantiateViewControllerWithIdentifier:@"webView"];
    web.url = @"http://hmineral.com/main-cevher-karakterizasyonu.html";
    [self.navigationController pushViewController:web animated:YES];
}
-(IBAction)flotasyonButtonpressed:(id)sender{
    WebViewController *web = [self.storyboard instantiateViewControllerWithIdentifier:@"webView"];
    web.url = @"http://hmineral.com/main-cevher-karakterizasyonu.html";
    [self.navigationController pushViewController:web animated:YES];
}
-(IBAction)manyetikButtonpressed:(id)sender{
    WebViewController *web = [self.storyboard instantiateViewControllerWithIdentifier:@"webView"];
    web.url = @"http://hmineral.com/main-cevher-karakterizasyonu.html";
    [self.navigationController pushViewController:web animated:YES];
}
-(IBAction)yuzeyButtonpressed:(id)sender{
    WebViewController *web = [self.storyboard instantiateViewControllerWithIdentifier:@"webView"];
    web.url = @"http://hmineral.com/main-cevher-karakterizasyonu.html";
    [self.navigationController pushViewController:web animated:YES];
}
-(IBAction) prosesButtonpressed:(id)sender{
    WebViewController *web = [self.storyboard instantiateViewControllerWithIdentifier:@"webView"];
    web.url = @"http://hmineral.com/main-cevher-karakterizasyonu.html";
    [self.navigationController pushViewController:web animated:YES];
}
-(IBAction)analitikButtonpressed:(id)sender{
    WebViewController *web = [self.storyboard instantiateViewControllerWithIdentifier:@"webView"];
    web.url = @"http://hmineral.com/main-cevher-karakterizasyonu.html";
    [self.navigationController pushViewController:web animated:YES];
}

@end
