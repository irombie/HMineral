//
//  FourthFourthViewController.m
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
    [_btn1 setTitleColor:[FourthViewController red] forState:UIControlStateNormal];
    //btn border
    [[_btn1 layer] setBorderWidth:2.0f];
    [[_btn1 layer] setBorderColor:[FourthViewController navy].CGColor];
    /*
     CAGradientLayer *btnGradient1 = [CAGradientLayer layer];
     btnGradient1.frame = _btn1.bounds;
     btnGradient1.colors = [NSArray arrayWithObjects:
     (id)[[FourthViewController red] CGColor],
     (id)[[FourthViewController red] CGColor],
     nil];
     [_btn1.layer insertSublayer:btnGradient1 atIndex:0];
     //round the corners of the button
     */
    CALayer *btnLayer1 = [_btn1 layer];
    [btnLayer1 setMasksToBounds:YES];
    [btnLayer1 setCornerRadius:5.0f];
    
    [_btn2 setTitleColor:[FourthViewController red] forState:UIControlStateNormal];
    [[_btn2 layer] setBorderWidth:2.0f];
    [[_btn2 layer] setBorderColor:[FourthViewController navy].CGColor];
    
    
    CALayer *btnLayer2 = [_btn2 layer];
    [btnLayer2 setMasksToBounds:YES];
    [btnLayer2 setCornerRadius:5.0f];
    
    [_btn3 setTitleColor:[FourthViewController red] forState:UIControlStateNormal];
    
    [[_btn3 layer] setBorderWidth:2.0f];
    [[_btn3 layer] setBorderColor:[FourthViewController navy].CGColor];
    CALayer *btnLayer3 = [_btn3 layer];
    [btnLayer3 setMasksToBounds:YES];
    [btnLayer3 setCornerRadius:5.0f];
    
    [_btn4 setTitleColor:[FourthViewController red] forState:UIControlStateNormal];
    [[_btn4 layer] setBorderWidth:2.0f];
    [[_btn4 layer] setBorderColor:[FourthViewController navy].CGColor];
    
    CALayer *btnLayer4 = [_btn4 layer];
    [btnLayer4 setMasksToBounds:YES];
    [btnLayer4 setCornerRadius:5.0f];
    
    [_btn5 setTitleColor:[FourthViewController red] forState:UIControlStateNormal];
    
    [[_btn5 layer] setBorderWidth:2.0f];
    [[_btn5 layer] setBorderColor:[FourthViewController navy].CGColor];
    
    CALayer *btnLayer5 = [_btn5 layer];
    [btnLayer5 setMasksToBounds:YES];
    [btnLayer5 setCornerRadius:5.0f];
    
    
    [_btn6 setTitleColor:[FourthViewController red] forState:UIControlStateNormal];
    
    [[_btn6 layer] setBorderWidth:2.0f];
    [[_btn6 layer] setBorderColor:[FourthViewController navy].CGColor];
    CALayer *btnLayer6 = [_btn6 layer];
    [btnLayer6 setMasksToBounds:YES];
    [btnLayer6 setCornerRadius:5.0f];
    
    [_btn7 setTitleColor:[FourthViewController red] forState:UIControlStateNormal];
    [[_btn7 layer] setBorderWidth:2.0f];
    [[_btn7 layer] setBorderColor:[FourthViewController navy].CGColor];
    
    CALayer *btnLayer7 = [_btn7 layer];
    [btnLayer7 setMasksToBounds:YES];
    [btnLayer7 setCornerRadius:5.0f];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)malzemeButtonpressed:(id)sender{
    WebViewController *web = [self.storyboard instantiateViewControllerWithIdentifier:@"webView"];
    web.url = @"http://82.196.10.182/Kirilma%20Karakterizasyonu.pdf";
    [self.navigationController pushViewController:web animated:YES];
}
-(IBAction) kirmaButtonpressed:(id)sender{
    WebViewController *web = [self.storyboard instantiateViewControllerWithIdentifier:@"webView"];
    web.url = @"http://82.196.10.182/Kirma.pdf";
    [self.navigationController pushViewController:web animated:YES];
}
-(IBAction)flotasyonButtonpressed:(id)sender{
   WebViewController *web = [self.storyboard instantiateViewControllerWithIdentifier:@"webView"];
    web.url = @"http://82.196.10.182/Flotasyon.pdf";
    [self.navigationController pushViewController:web animated:YES];

}
-(IBAction)manyetikButtonpressed:(id)sender{
    WebViewController *web = [self.storyboard instantiateViewControllerWithIdentifier:@"webView"];
    web.url = @"http://82.196.10.182/Manyetik.pdf";
    [self.navigationController pushViewController:web animated:YES];
}
-(IBAction)yuzeyButtonpressed:(id)sender{
    WebViewController *web = [self.storyboard instantiateViewControllerWithIdentifier:@"webView"];
    web.url = @"http://82.196.10.182/Yuzey%20Kimya.pdf";
    [self.navigationController pushViewController:web animated:YES];

}
-(IBAction) prosesButtonpressed:(id)sender{
    WebViewController *web = [self.storyboard instantiateViewControllerWithIdentifier:@"webView"];
    web.url = @"http://82.196.10.182/Proses%20Mineraloji.pdf";
    [self.navigationController pushViewController:web animated:YES];

}
-(IBAction)analitikButtonpressed:(id)sender{
    WebViewController *web = [self.storyboard instantiateViewControllerWithIdentifier:@"webView"];
    web.url = @"http://82.196.10.182/Analitik%20Kimya.pdf";
    [self.navigationController pushViewController:web animated:YES];

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


@end
