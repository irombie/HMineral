//
//  EighthViewController.h
//  HMineral
//
//  Created by Gül Ergün on 24/01/16.
//  Copyright © 2016 İrem Ergün. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WebViewController.h"

@interface EighthViewController : UIViewController

-(IBAction)ozcan:(id)sender;

-(IBAction) levent:(id)sender;

-(IBAction)zafir:(id)sender;

-(IBAction)metin:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *ozcanBtn;
@property (weak, nonatomic) IBOutlet UIButton *leventBtn;

@property (weak, nonatomic) IBOutlet UIButton *zafirBtn;

@property (weak, nonatomic) IBOutlet UIButton *metinBtn;

+ (UIColor *)red;
+ (UIColor *)navy;

@end
