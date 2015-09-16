//
//  MovieDetailsViewController.m
//  RottenTomatoes
//
//  Created by Pankaj Bedse on 9/15/15.
//  Copyright (c) 2015 Pankaj Bedse. All rights reserved.
//

#import "MovieDetailsViewController.h"
#import "UIImageView+AFNetworking.h"
#import "MovieDetailTableViewCell.h"

@interface MovieDetailsViewController ()

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@end

@implementation MovieDetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    MovieDetailTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"com.yahoo.moviedetailcell" forIndexPath:indexPath];
    NSString *url = self.movie[@"posters"][@"original"];
    [cell.movieImage setImageWithURL:[NSURL URLWithString:url]];
    cell.movieSynopsis.text = self.movie[@"synopsis"];
    self.title = self.movie[@"title"];

    return cell;
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
