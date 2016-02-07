//
//  SixthViewController.m
//  HMineral
//
//  Created by Gül Ergün on 24/01/16.
//  Copyright © 2016 İrem Ergün. All rights reserved.
//

#import "SixthViewController.h"

@interface SixthViewController ()

@end

@implementation SixthViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view.
    self.navigationItem.title=@"ARAÇLAR";
    self.view.backgroundColor = [UIColor blackColor];
    [_araclarTV setBackgroundColor: [UIColor clearColor]];
    [_araclarTV setTextColor: [UIColor blackColor]];
    self.araclarTV.editable=NO;
    //[_araclarTV addObserver:self forKeyPath:@"contentSize" options:(NSKeyValueObservingOptionNew) context:NULL];
    self.araclarTV.font=[UIFont fontWithName:@"Helvetica" size: 17.0];
    [_araclarTV setTextColor:[UIColor yellowColor]];
    UIImage *image = [UIImage imageNamed: @"yapim_asamasi.jpg"];
    _yapim_img.image=image;
    


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)viewDidLayoutSubviews {
    [self. araclarTV setContentOffset:CGPointZero animated:NO];
}
/*
-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context {
    UITextView *tv = object;
    CGFloat topCorrect = ([tv bounds].size.height - [tv contentSize].height * [tv zoomScale])/2.0;
    topCorrect = ( topCorrect < 0.0 ? 0.0 : topCorrect );
    tv.contentOffset = (CGPoint){.x = 0, .y = -topCorrect};
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
