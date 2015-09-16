//
//  MovieDetailsViewController.h
//  RottenTomatoes
//
//  Created by Pankaj Bedse on 9/15/15.
//  Copyright (c) 2015 Pankaj Bedse. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MovieDetailsViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
@property (nonatomic, strong) NSDictionary *movie;
@end
