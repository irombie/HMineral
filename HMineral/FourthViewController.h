//
//  FourthViewController.h
//  HMineral
//
//  Created by Gül Ergün on 24/01/16.
//  Copyright © 2016 İrem Ergün. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WebViewController.h"

@interface FourthViewController : UIViewController
-(IBAction)malzemeButtonpressed:(id)sender;

-(IBAction) kirmaButtonpressed:(id)sender;

-(IBAction)flotasyonButtonpressed:(id)sender;

-(IBAction)manyetikButtonpressed:(id)sender;

-(IBAction)yuzeyButtonpressed:(id)sender;

-(IBAction) prosesButtonpressed:(id)sender;

-(IBAction)analitikButtonpressed:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *btn1;

@property (weak, nonatomic) IBOutlet UIButton *btn2;

@property (weak, nonatomic) IBOutlet UIButton *btn3;

@property (weak, nonatomic) IBOutlet UIButton *btn4;

@property (weak, nonatomic) IBOutlet UIButton *btn5;

@property (weak, nonatomic) IBOutlet UIButton *btn6;

@property (weak, nonatomic) IBOutlet UIButton *btn7;

+ (UIColor *)red;
+ (UIColor *)backGr;
+ (UIColor *)navy;


@end
