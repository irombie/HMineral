//
//  SecondViewController.h
//  HMineral
//
//  Created by Gül Ergün on 23/01/16.
//  Copyright © 2016 İrem Ergün. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WebViewController.h"

@interface SecondViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextView *hakkindaTV;
-(IBAction)cevherButtonpressed:(id)sender;
-(IBAction) akimButtonpressed:(id)sender;
-(IBAction)performansButtonpressed:(id)sender;
-(IBAction)devreButtonpressed:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *btn2;
@property (weak, nonatomic) IBOutlet UIButton *btn3;
@property (weak, nonatomic) IBOutlet UIButton *btn4;
@property (weak, nonatomic) IBOutlet UIButton *btn5;

@end
