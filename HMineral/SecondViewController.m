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
    self.view.backgroundColor = [SecondViewController backGr];
    self.hakkindaTV.backgroundColor=[SecondViewController backGr];
    [_btn2 setTitleColor:[SecondViewController red] forState:UIControlStateNormal];
    [[_btn2 layer] setBorderWidth:2.0f];
    [[_btn2 layer] setBorderColor:[SecondViewController navy].CGColor];
    
    CALayer *btnLayer2 = [_btn2 layer];
    [btnLayer2 setMasksToBounds:YES];
    [btnLayer2 setCornerRadius:5.0f];
    [_btn2 setBackgroundColor:[SecondViewController whitish]];
    
    [_btn3 setTitleColor:[SecondViewController red] forState:UIControlStateNormal];
    
    [[_btn3 layer] setBorderWidth:2.0f];
    [[_btn3 layer] setBorderColor:[SecondViewController navy].CGColor];
    CALayer *btnLayer3 = [_btn3 layer];
    [btnLayer3 setMasksToBounds:YES];
    [btnLayer3 setCornerRadius:5.0f];
    [_btn3 setBackgroundColor:[SecondViewController whitish]];
    
    [_btn4 setTitleColor:[SecondViewController red] forState:UIControlStateNormal];
    [[_btn4 layer] setBorderWidth:2.0f];
    [[_btn4 layer] setBorderColor:[SecondViewController navy].CGColor];
    
    CALayer *btnLayer4 = [_btn4 layer];
    [btnLayer4 setMasksToBounds:YES];
    [btnLayer4 setCornerRadius:5.0f];
    [_btn4 setBackgroundColor:[SecondViewController whitish]];
    
    [_btn5 setTitleColor:[SecondViewController red] forState:UIControlStateNormal];
    
    [[_btn5 layer] setBorderWidth:2.0f];
    [[_btn5 layer] setBorderColor:[SecondViewController navy].CGColor];
    
    CALayer *btnLayer5 = [_btn5 layer];
    [btnLayer5 setMasksToBounds:YES];
    [btnLayer5 setCornerRadius:5.0f];
    [_btn5 setBackgroundColor:[SecondViewController whitish]];
                              
    
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
+ (UIColor *)red {
    return [UIColor colorWithRed:212.0f/255.0f green:0.0f/255.0f blue:0.0f/255.0f alpha:1.0f];
}
+ (UIColor *)backGr {
    return [UIColor colorWithRed:225.0f/255.0f green:226.0f/255.0f blue:228.0f/255.0f alpha:1.0f];
}
+(UIColor *) navy{
    return [UIColor colorWithRed:9.0f/255.0f green:48.0f/255.0f blue:95.0f/255.0f alpha:1.0f];
}


+(UIColor *) whitish{
    return [UIColor colorWithRed:244.0f/255.0f green:244.0f/255.0f blue:245.0f/255.0f alpha:1.0f];
}

@end
