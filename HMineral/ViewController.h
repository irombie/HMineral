//
//  ViewController.h
//  HMineral
//
//  Created by Gül Ergün on 23/01/16.
//  Copyright © 2016 İrem Ergün. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface ViewController : UIViewController 

@property (weak, nonatomic) IBOutlet UIImageView *logo;
- (IBAction)goToHk:(id)sender;
- (IBAction)goToArge:(id)sender;
-(IBAction)goToLab:(id)sender;
- (IBAction)goToYaz:(id)sender;
- (IBAction)goToArac:(id)sender;
- (IBAction)goToBag:(id)sender;
- (IBAction)goToKadro:(id)sender;
- (IBAction)goToIlet:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UIButton *btn1;
@property (weak, nonatomic) IBOutlet UIButton *btn2;
@property (weak, nonatomic) IBOutlet UIButton *btn3;
@property (weak, nonatomic) IBOutlet UIButton *btn4;
@property (weak, nonatomic) IBOutlet UIButton *btn5;
@property (weak, nonatomic) IBOutlet UIButton *btn6;
@property (weak, nonatomic) IBOutlet UIButton *btn7;
@property (weak, nonatomic) IBOutlet UIButton *btn8;


+ (UIColor *)red;
+ (UIColor *)backGr;
+ (UIColor *)navy;



@end

