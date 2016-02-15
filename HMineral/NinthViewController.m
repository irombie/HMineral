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
    self.view.backgroundColor = [NinthViewController backGr];
    self.tamAdres.backgroundColor = [NinthViewController backGr];
    
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
    MKPointAnnotation *point = [[MKPointAnnotation alloc] init];
    point.coordinate = zoomLocation;
    point.title = @"Hacettepe Mineral Teknolojileri";
    point.subtitle=@"Teknokent, 4. Ar-Ge Binası, No:51 Beytepe";
    [_mapView addAnnotation:point];
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
    NSString *emailTitle = @"";
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
 //annotation
 CLGeocoder *ceo = [[CLGeocoder alloc]init];
 CLLocation *loc = [[CLLocation alloc]initWithLatitude:32.00 longitude:21.322]; //insert your coordinates
 
 [ceo reverseGeocodeLocation:loc
 completionHandler:^(NSArray *placemarks, NSError *error) {
 CLPlacemark *placemark = [placemarks objectAtIndex:0];
 NSLog(@"placemark %@",placemark);
 //String to hold address
 NSString *locatedAt = [[placemark.addressDictionary valueForKey:@"FormattedAddressLines"] componentsJoinedByString:@", "];
 NSLog(@"addressDictionary %@", placemark.addressDictionary);
 
 NSLog(@"placemark %@",placemark.region);
 NSLog(@"placemark %@",placemark.country);  // Give Country Name
 NSLog(@"placemark %@",placemark.locality); // Extract the city name
 NSLog(@"location %@",placemark.name);
 NSLog(@"location %@",placemark.ocean);
 NSLog(@"location %@",placemark.postalCode);
 NSLog(@"location %@",placemark.subLocality);
 
 NSLog(@"location %@",placemark.location);
 //Print the location to console
 NSLog(@"I am currently at %@",locatedAt);
 }
 else {
 NSLog(@"Could not locate");
 }
 ];
- (void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation
{
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(userLocation.coordinate, 39.865323, 32.738306);
    [self.mapView setRegion:[self.mapView regionThatFits:region] animated:YES];
    
    // Add an annotation
    MKPointAnnotation *point = [[MKPointAnnotation alloc] init];
    point.coordinate = userLocation.coordinate;
    point.title = @"Hacettepe Mineral Teknolojileri Ltd. Şti.";
    point.subtitle = @"Hacettepe Teknokent, 2. Arge Binasi, No:5 Beytepe-ANKARA";
    
    [self.mapView addAnnotation:point];
}
*/
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
- (IBAction)haritaAc:(id)sender {
    CLLocationCoordinate2D officeLocation = CLLocationCoordinate2DMake(39.865323,32.738306);
        //Apple Maps, using the MKMapItem class
        MKPlacemark *placemark = [[MKPlacemark alloc] initWithCoordinate:officeLocation addressDictionary:nil];
        MKMapItem *item = [[MKMapItem alloc] initWithPlacemark:placemark];
        item.name = @"Hacettepe Mineral Teknolojileri";
        [item openInMapsWithLaunchOptions:nil];
}
+ (UIColor *)backGr {
    return [UIColor colorWithRed:225.0f/255.0f green:226.0f/255.0f blue:228.0f/255.0f alpha:1.0f];
}
/*
-(void)openActionSheet:(id)sender {
    //give the user a choice of Apple or Google Maps
    UIActionSheet *sheet = [[UIActionSheet alloc] initWithTitle:@"Open in Maps" delegate:self cancelButtonTitle:nil destructiveButtonTitle:nil otherButtonTitles:@"Apple Maps",@"Google Maps", nil];
    [sheet showInView:self.view];
}
-(void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex {
    //coordinates for the place we want to display
    CLLocationCoordinate2D rdOfficeLocation = CLLocationCoordinate2DMake(39.865323,32.738306);
    if (buttonIndex==0) {
        //Apple Maps, using the MKMapItem class
        MKPlacemark *placemark = [[MKPlacemark alloc] initWithCoordinate:rdOfficeLocation addressDictionary:nil];
        MKMapItem *item = [[MKMapItem alloc] initWithPlacemark:placemark];
        item.name = @"ReignDesign Office";
        [item openInMapsWithLaunchOptions:nil];
    } else if (buttonIndex==1) {
        //Google Maps
        //construct a URL using the comgooglemaps schema
        NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"comgooglemaps://?center=%f,%f",rdOfficeLocation.latitude,rdOfficeLocation.longitude]];
        if (![[UIApplication sharedApplication] canOpenURL:url]) {
            NSLog(@"Google Maps app is not installed");
            //left as an exercise for the reader: open the Google Maps mobile website instead!
        } else {
            [[UIApplication sharedApplication] openURL:url];
        }
    }
}
*/
                                                                     
@end
