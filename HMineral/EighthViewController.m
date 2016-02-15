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
    self.view.backgroundColor = [EighthViewController backGr];
    [_ozcanBtn setTitleColor:[EighthViewController red] forState:UIControlStateNormal];
    [[_ozcanBtn layer] setBorderWidth:2.0f];
    [[_ozcanBtn layer] setBorderColor:[EighthViewController navy].CGColor];
    
    
    CALayer *btnLayer2 = [_ozcanBtn layer];
    [btnLayer2 setMasksToBounds:YES];
    [btnLayer2 setCornerRadius:5.0f];
    [_ozcanBtn setBackgroundColor:[EighthViewController whitish]];
    
    [_leventBtn setTitleColor:[EighthViewController red] forState:UIControlStateNormal];
    [[_leventBtn layer] setBorderWidth:2.0f];
    [[_leventBtn layer] setBorderColor:[EighthViewController navy].CGColor];
    
    
    CALayer *btnLayer1 = [_leventBtn layer];
    [btnLayer1 setMasksToBounds:YES];
    [btnLayer1 setCornerRadius:5.0f];
    [_leventBtn setBackgroundColor:[EighthViewController whitish]];

    
    [_zafirBtn setTitleColor:[EighthViewController red] forState:UIControlStateNormal];
    [[_zafirBtn layer] setBorderWidth:2.0f];
    [[_zafirBtn layer] setBorderColor:[EighthViewController navy].CGColor];
    
    
    CALayer *btnLayer = [_zafirBtn layer];
    [btnLayer setMasksToBounds:YES];
    [btnLayer setCornerRadius:5.0f];
    [_zafirBtn setBackgroundColor:[EighthViewController whitish]];

    
    [_metinBtn setTitleColor:[EighthViewController red] forState:UIControlStateNormal];
    [[_metinBtn layer] setBorderWidth:2.0f];
    [[_metinBtn layer] setBorderColor:[EighthViewController navy].CGColor];
    
    
    CALayer *btnLayer3 = [_metinBtn layer];
    [btnLayer3 setMasksToBounds:YES];
    [btnLayer3 setCornerRadius:5.0f];
    [_metinBtn setBackgroundColor:[EighthViewController whitish]];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)ozcan:(id)sender{
    WebViewController *web = [self.storyboard instantiateViewControllerWithIdentifier:@"webView"];
    web.url = @"http://www.hmineral.com/cv/CV-ozcan-yildirim-gursoy.PDF";
    [self.navigationController pushViewController:web animated:YES];
}


-(IBAction) levent:(id)sender{
    WebViewController *web = [self.storyboard instantiateViewControllerWithIdentifier:@"webView"];
    web.url = @"http://www.hmineral.com/cv/CV-levent-ergun.pdf";
    [self.navigationController pushViewController:web animated:YES];
}


-(IBAction)zafir:(id)sender{
    WebViewController *web = [self.storyboard instantiateViewControllerWithIdentifier:@"webView"];
    web.url = @"http://www.hmineral.com/cv/CV-zafir-ekmekci.pdf";
    [self.navigationController pushViewController:web animated:YES];
}


-(IBAction)metin:(id)sender{
    WebViewController *web = [self.storyboard instantiateViewControllerWithIdentifier:@"webView"];
    web.url = @"http://www.hmineral.com/cv/CV-metin-can.PDF";
    [self.navigationController pushViewController:web animated:YES];
}

+ (UIColor *)red {
    return [UIColor colorWithRed:212.0f/255.0f green:0.0f/255.0f blue:0.0f/255.0f alpha:1.0f];
}

+(UIColor *) navy{
    return [UIColor colorWithRed:9.0f/255.0f green:48.0f/255.0f blue:95.0f/255.0f alpha:1.0f];
}



+ (UIColor *)backGr {
    return [UIColor colorWithRed:225.0f/255.0f green:226.0f/255.0f blue:228.0f/255.0f alpha:1.0f];
}
+(UIColor *) whitish{
    return [UIColor colorWithRed:244.0f/255.0f green:244.0f/255.0f blue:245.0f/255.0f alpha:1.0f];
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
