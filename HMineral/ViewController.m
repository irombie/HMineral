//
//  ViewController.m
//  HMineral
//
//  Created by Gül Ergün on 23/01/16.
//  Copyright © 2016 İrem Ergün. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //UIColor *colour = [[UIColor alloc]initWithRed:0.0 green:0.0 blue:1.0 alpha:1.0];
    //self.view.backgroundColor = colour;
    // Do any additional setup after loading the view, typically from a nib.
    self.navigationItem.title=@"ANASAYFA";
    UIImage *image = [UIImage imageNamed: @"hmt.png"];
    _logo.image=image;
    //_label.lineBreakMode = NSLineBreakByWordWrapping;
    //_label.numberOfLines = 1;//tek satıra sığdırma kodu
    [_label sizeToFit];
    /*
    UIImage *btnImage = [UIImage imageNamed:@"kir_soru.jpg"];
    [_btn1 setImage:btnImage forState:UIControlStateNormal];
    _btn1.transform = CGAffineTransformMakeScale(-1.0, 1.0);
    _btn1.titleLabel.transform = CGAffineTransformMakeScale(-1.0, 1.0);
    _btn1.imageView.transform = CGAffineTransformMakeScale(-1.0, 1.0);
     */
    self.view.backgroundColor = [ViewController backGr];//background color
    //btn txt clr
    [_btn1 setTitleColor:[ViewController red] forState:UIControlStateNormal];
    //btn border
    CAGradientLayer *btnGradient1 = [CAGradientLayer layer];
    btnGradient1.frame = _btn1.bounds;
    btnGradient1.colors = [NSArray arrayWithObjects:
                          (id)[[ViewController navy] CGColor],
                          (id)[[ViewController navy] CGColor],
                          nil];
    [_btn1.layer insertSublayer:btnGradient1 atIndex:0];
    //round the corners of the button
    CALayer *btnLayer1 = [_btn1 layer];
    [btnLayer1 setMasksToBounds:YES];
    [btnLayer1 setCornerRadius:5.0f];
    
    //other buttons..
    
    [_btn2 setTitleColor:[ViewController red] forState:UIControlStateNormal];

    CAGradientLayer *btnGradient2 = [CAGradientLayer layer];
    btnGradient2.frame = _btn2.bounds;
    btnGradient2.colors = [NSArray arrayWithObjects:
                          (id)[[ViewController navy] CGColor],
                          (id)[[ViewController navy] CGColor],
                          nil];
    [_btn2.layer insertSublayer:btnGradient2 atIndex:0];
    
    CALayer *btnLayer2 = [_btn2 layer];
    [btnLayer2 setMasksToBounds:YES];
    [btnLayer2 setCornerRadius:5.0f];
    
    [_btn3 setTitleColor:[ViewController red] forState:UIControlStateNormal];
    
    CAGradientLayer *btnGradient3 = [CAGradientLayer layer];
    btnGradient3.frame = _btn3.bounds;
    btnGradient3.colors = [NSArray arrayWithObjects:
                           (id)[[ViewController navy] CGColor],
                           (id)[[ViewController navy] CGColor],
                           nil];
    [_btn3.layer insertSublayer:btnGradient3 atIndex:0];
    
    CALayer *btnLayer3 = [_btn3 layer];
    [btnLayer3 setMasksToBounds:YES];
    [btnLayer3 setCornerRadius:5.0f];
    
    [_btn4 setTitleColor:[ViewController red] forState:UIControlStateNormal];
    
    CAGradientLayer *btnGradient4 = [CAGradientLayer layer];
    btnGradient4.frame = _btn4.bounds;
    btnGradient4.colors = [NSArray arrayWithObjects:
                           (id)[[ViewController navy] CGColor],
                           (id)[[ViewController navy] CGColor],
                           nil];
    [_btn4.layer insertSublayer:btnGradient4 atIndex:0];
    CALayer *btnLayer4 = [_btn4 layer];
    [btnLayer4 setMasksToBounds:YES];
    [btnLayer4 setCornerRadius:5.0f];
    
    [_btn5 setTitleColor:[ViewController red] forState:UIControlStateNormal];
    
    CAGradientLayer *btnGradient5 = [CAGradientLayer layer];
    btnGradient5.frame = _btn5.bounds;
    btnGradient5.colors = [NSArray arrayWithObjects:
                           (id)[[ViewController navy] CGColor],
                           (id)[[ViewController navy] CGColor],
                           nil];
    [_btn5.layer insertSublayer:btnGradient5 atIndex:0];
    
    CALayer *btnLayer5 = [_btn5 layer];
    [btnLayer5 setMasksToBounds:YES];
    [btnLayer5 setCornerRadius:5.0f];
    
    
    [_btn6 setTitleColor:[ViewController red] forState:UIControlStateNormal];
    
    CAGradientLayer *btnGradient6 = [CAGradientLayer layer];
    btnGradient6.frame = _btn6.bounds;
    btnGradient6.colors = [NSArray arrayWithObjects:
                           (id)[[ViewController navy] CGColor],
                           (id)[[ViewController navy] CGColor],
                           nil];
    [_btn6.layer insertSublayer:btnGradient6 atIndex:0];
    CALayer *btnLayer6 = [_btn6 layer];
    [btnLayer6 setMasksToBounds:YES];
    [btnLayer6 setCornerRadius:5.0f];
    
    [_btn7 setTitleColor:[ViewController red] forState:UIControlStateNormal];
    
    CAGradientLayer *btnGradient7 = [CAGradientLayer layer];
    btnGradient7.frame = _btn7.bounds;
    btnGradient7.colors = [NSArray arrayWithObjects:
                           (id)[[ViewController navy] CGColor],
                           (id)[[ViewController navy] CGColor],
                           nil];
    [_btn7.layer insertSublayer:btnGradient7 atIndex:0];
    CALayer *btnLayer7 = [_btn7 layer];
    [btnLayer7 setMasksToBounds:YES];
    [btnLayer7 setCornerRadius:5.0f];
    
    [_btn8 setTitleColor:[ViewController red] forState:UIControlStateNormal];
    
    CAGradientLayer *btnGradient8 = [CAGradientLayer layer];
    btnGradient8.frame = _btn8.bounds;
    btnGradient8.colors = [NSArray arrayWithObjects:
                           (id)[[ViewController navy] CGColor],
                           (id)[[ViewController navy] CGColor],
                           nil];
    [_btn8.layer insertSublayer:btnGradient8 atIndex:0];
    CALayer *btnLayer8 = [_btn8 layer];
    [btnLayer8 setMasksToBounds:YES];
    [btnLayer8 setCornerRadius:5.0f];

   
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)goToHk:(id)sender {
    [self performSegueWithIdentifier:@"Hakkimizda" sender:self];
}

- (IBAction)goToArge:(id)sender {
    [self performSegueWithIdentifier:@"Arge" sender:self];
}
- (IBAction)goToLab:(id)sender {
    [self performSegueWithIdentifier:@"Lab" sender:self];
}

- (IBAction)goToYaz:(id)sender {
    [self performSegueWithIdentifier:@"Yazilim" sender:self];
}
- (IBAction)goToArac:(id)sender {
     [self performSegueWithIdentifier:@"Arac" sender:self];
}

- (IBAction)goToBag:(id)sender {
     [self performSegueWithIdentifier:@"Bag" sender:self];
}

- (IBAction)goToKadro:(id)sender {
    [self performSegueWithIdentifier:@"Kadro" sender:self];
}

- (IBAction)goToIlet:(id)sender {
    [self performSegueWithIdentifier:@"Ilet" sender:self];
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
