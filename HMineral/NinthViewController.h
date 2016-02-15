//
//  NinthViewController.h
//  HMineral
//
//  Created by Gül Ergün on 24/01/16.
//  Copyright © 2016 İrem Ergün. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <MessageUI/MessageUI.h>
#import "WebViewController.h"
#define METERS_PER_MILE 1609.344

@interface NinthViewController : UIViewController <MFMailComposeViewControllerDelegate> // Add the delegate
@property (weak, nonatomic) IBOutlet UILabel *adresLbl;
-(IBAction)callPhone:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *tlfLbl;
@property (weak, nonatomic) IBOutlet UILabel *faksLbl;
@property (weak, nonatomic) IBOutlet UILabel *postLbl;
-(IBAction)showEmail:(id)sender;
@property (weak, nonatomic) IBOutlet UITextView *tamAdres;
@property (weak, nonatomic) IBOutlet UILabel *webSayLbl;
-(IBAction)goToWebSite:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *haritaLbl;

@property (weak, nonatomic) IBOutlet MKMapView *mapView;
@property (weak, nonatomic) IBOutlet UIButton *haritaAc;
- (IBAction)haritaAc:(id)sender;


@end
