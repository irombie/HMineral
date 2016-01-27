//
//  WebViewController.m
//  HMineral
//
//  Created by Gül Ergün on 25/01/16.
//  Copyright © 2016 İrem Ergün. All rights reserved.
//

#import "WebViewController.h"

@interface WebViewController ()

@end

@implementation WebViewController

@synthesize webView = _webView;
@synthesize url = _url;

- (void)viewDidLoad {
    [super viewDidLoad];
    //_webView.scrollView.delegate = self;
    // Do any additional setup after loading the view.
    _webView.scrollView.scrollEnabled = YES;
     _webView.userInteractionEnabled = YES;
    NSURL *linkUrl = [NSURL URLWithString:_url];
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:linkUrl];
    [_webView loadRequest:urlRequest];
    _webView.delegate = self;
    //NSString *jsCommand = [NSString stringWithFormat:@"document.body.style.zoom = 1.5;"];
    //[_webView stringByEvaluatingJavaScriptFromString:jsCommand];
   

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
/*
- (void)webViewDidFinishLoad:(UIWebView *)theWebView
{
    [_webView.scrollView setContentSize: CGSizeMake(_webView.frame.size.width, _webView.scrollView.contentSize.width)];
    CGSize contentSize = theWebView.scrollView.contentSize;
    CGSize viewSize = theWebView.bounds.size;
    
    float rw = viewSize.width / contentSize.width;
    
    theWebView.scrollView.minimumZoomScale = rw;
    theWebView.scrollView.maximumZoomScale = rw;
    theWebView.scrollView.zoomScale = rw;
    //[_webView zoomToFit];
}

-(void)zoomToFit
{
    
    if ([_webView respondsToSelector:@selector(scrollView)])
    {
        UIScrollView *scroll=[_webView scrollView];
        
        float zoom=_webView.bounds.size.width/scroll.contentSize.width;
        [scroll setZoomScale:zoom animated:NO];
    }
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
