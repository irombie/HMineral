//
//  NinthViewController.m
//  HMineral
//
//  Created by Gül Ergün on 24/01/16.
//  Copyright © 2016 İrem Ergün. All rights reserved.
//

#import "NinthViewController.h"

@interface NinthViewController ()

@end

@implementation NinthViewController

- (void)viewDidLoad {
    //39.865323, 32.738306
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title=@"İLETİŞİM";
    [_adresLbl setFont:[UIFont fontWithName:@"Arial-BoldMT" size:16]];
    [_tlfLbl setFont:[UIFont fontWithName:@"Arial-BoldMT" size:16]];
    [_faksLbl setFont:[UIFont fontWithName:@"Arial-BoldMT" size:16]];
    [_postLbl setFont:[UIFont fontWithName:@"Arial-BoldMT" size:16]];
    _tamAdres.editable = NO;
    [_haritaLbl setFont:[UIFont fontWithName:@"Arial-BoldMT" size:16]];
    /*
    NSString *location = @"Hacettepe Teknokent, 2. Arge Binasi, Beytepe, Ankara - TÜRKİYE";
    CLGeocoder *geocoder = [[CLGeocoder alloc] init];
    [geocoder geocodeAddressString:location
                 completionHandler:^(NSArray* placemarks, NSError* error){
                     if (placemarks && placemarks.count > 0) {
                         CLPlacemark *topResult = [placemarks objectAtIndex:0];
                         MKPlacemark *placemark = [[MKPlacemark alloc] initWithPlacemark:topResult];
                         
                         MKCoordinateRegion region = self.mapView.region;
                         region.center = placemark.region.center;
                         region.span.longitudeDelta /= 8.0;
                         region.span.latitudeDelta /= 8.0;
                         
                         [self.mapView setRegion:region animated:YES];
                         [self.mapView addAnnotation:placemark];
                     }
                 }
     ];
     */
}
- (void)viewWillAppear:(BOOL)animated {
    // 1
    CLLocationCoordinate2D zoomLocation;
    zoomLocation.latitude = 39.865323;
    zoomLocation.longitude= 32.738306;
    
    // 2
    MKCoordinateRegion viewRegion = MKCoordinateRegionMakeWithDistance(zoomLocation, 0.5*METERS_PER_MILE, 0.5*METERS_PER_MILE);
  
    viewRegion.span.longitudeDelta /= 8.0;
    viewRegion.span.latitudeDelta /= 8.0;
    MKPlacemark *placemark = [[MKPlacemark alloc] initWithCoordinate:zoomLocation addressDictionary:nil];
    [self.mapView addAnnotation:placemark];
    
    // 3
    [_mapView setRegion:viewRegion animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)callPhone:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"telprompt://+903122992601"]];
}
- (IBAction)showEmail:(id)sender {
    // Email Subject
    NSString *emailTitle = @"Bize Ulaşın";
    // Email Content
    NSString *messageBody = @"";
    // To address
    NSArray *toRecipents = [NSArray arrayWithObject:@"info@hmineral.com"];
    
    MFMailComposeViewController *mc = [[MFMailComposeViewController alloc] init];
    mc.mailComposeDelegate = self;
    [mc setSubject:emailTitle];
    [mc setMessageBody:messageBody isHTML:YES];
    [mc setToRecipients:toRecipents];
    
    // Present mail view controller on screen
    [self presentViewController:mc animated:YES completion:NULL];
    
}

- (void) mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error
{
    /*
    switch (result)
    {
        case MFMailComposeResultCancelled:
            NSLog(@"Mail cancelled");
            break;
        case MFMailComposeResultSaved:
            NSLog(@"Mail saved");
            break;
        case MFMailComposeResultSent:
            NSLog(@"Mail sent");
            break;
        case MFMailComposeResultFailed:
            NSLog(@"Mail sent failure: %@", [error localizedDescription]);
            break;
        default:
            break;
    }
     */
    
    // Close the Mail Interface
    [self dismissViewControllerAnimated:YES completion:NULL];
}
 
-(IBAction)goToWebSite:(id)sender{
    WebViewController *web = [self.storyboard instantiateViewControllerWithIdentifier:@"webView"];
    web.url = @"http://hmineral.com";
    [self.navigationController pushViewController:web animated:YES];
}
/*
- (void)viewWillAppear:(BOOL)animated {
    // 1
    CLLocationCoordinate2D zoomLocation;
    zoomLocation.latitude = 39.281516;
    zoomLocation.longitude= -76.580806;
    
    // 2
    MKCoordinateRegion viewRegion = MKCoordinateRegionMakeWithDistance(zoomLocation, 0.5*METERS_PER_MILE, 0.5*METERS_PER_MILE);
    
    // 3
    [_mapView setRegion:viewRegion animated:YES];
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
                                                                     
@end
