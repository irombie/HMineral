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
@end
