//
//  NinthViewController.h
//  HMineral
//
//  Created by Gül Ergün on 24/01/16.
//  Copyright © 2016 İrem Ergün. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>

@interface NinthViewController : UIViewController <MFMailComposeViewControllerDelegate> // Add the delegate
@property (weak, nonatomic) IBOutlet UILabel *adresLbl;
-(IBAction)callPhone:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *tlfLbl;
@property (weak, nonatomic) IBOutlet UILabel *faksLbl;
@property (weak, nonatomic) IBOutlet UILabel *postLbl;
-(IBAction)showEmail:(id)sender;
@end
