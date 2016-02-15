//
//  ThirdViewController.m
//  HMineral
//
//  Created by Gül Ergün on 23/01/16.
//  Copyright © 2016 İrem Ergün. All rights reserved.
//

#import "ThirdViewController.h"

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.navigationItem.title=@"AR-GE";
    _argeTV.editable = NO;
    self.argeTV.font=[UIFont fontWithName:@"Helvetica" size: 16.0];
    self.argeTV.backgroundColor = [ThirdViewController backGr];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)viewDidLayoutSubviews {
    [self.argeTV setContentOffset:CGPointZero animated:NO];
}

+ (UIColor *)backGr {
    return [UIColor colorWithRed:225.0f/255.0f green:226.0f/255.0f blue:228.0f/255.0f alpha:1.0f];
}


@end
