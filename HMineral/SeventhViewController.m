//
//  SeventhViewController.m
//  HMineral
//
//  Created by Gül Ergün on 24/01/16.
//  Copyright © 2016 İrem Ergün. All rights reserved.
//

#import "SeventhViewController.h"


@interface SeventhViewController ()

@end

@implementation SeventhViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.delegate=self;
    // Do any additional setup after loading the view.
    self.navigationItem.title=@"BAĞLANTILAR";
    
     content=[[NSMutableArray alloc] initWithArray:@[@{@"Title":@"Maden Mühendisleri Odası",@"Icon":@"mmo.jpg",@"URL":@"http://www.maden.org.tr"}, @{@"Title":@"Maden Tetkik ve Arama",@"Icon":@"mta.jpg",@"URL":@"http://www.mta.gov.tr/v2.0/index.php"}, @{@"Title":@"Minerology Database",@"Icon":@"minerology.gif",@"URL":@"http://www.webmineral.com"}, @{@"Title":@"SME",@"Icon":@"sme.png",@"URL":@"http://www.sme.org/smehome.aspx"}
     ,@{@"Title":@"Mining Research Library",@"Icon":@"onemine.jpg",@"URL":@"http://www.onemine.org"}]];
     
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

 
 - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
 {
 return [content count];
 }
 - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
 {
 static NSString *simpleTableIdentifier = @"SimpleTableCell";
 
 UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
 
 if (cell == nil) {
 cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
 }
 
 cell.textLabel.text = [content objectAtIndex:indexPath.row][@"Title"];
 cell.imageView.image = [UIImage imageNamed:[content objectAtIndex:indexPath.row][@"Icon"]] ;
     
 return cell;
 }

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [super tableView:tableView didSelectRowAtIndexPath:indexPath];
    WebViewController *web = [self.storyboard instantiateViewControllerWithIdentifier:@"webView"];
    web.url = [content objectAtIndex:indexPath.row][@"URL"];
    [self.navigationController pushViewController:web animated:YES];
}



#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}


@end
