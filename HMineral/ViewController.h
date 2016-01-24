//
//  ViewController.h
//  HMineral
//
//  Created by Gül Ergün on 23/01/16.
//  Copyright © 2016 İrem Ergün. All rights reserved.
//

#import <UIKit/UIKit.h>

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

@end

