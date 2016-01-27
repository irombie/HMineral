//
//  WebViewController.h
//  HMineral
//
//  Created by Gül Ergün on 25/01/16.
//  Copyright © 2016 İrem Ergün. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebViewController : UIViewController <UIWebViewDelegate>



@property (strong, nonatomic) IBOutlet UIWebView *webView;
@property (nonatomic, retain) NSString * url;
//-(void)zoomToFit;

@end
