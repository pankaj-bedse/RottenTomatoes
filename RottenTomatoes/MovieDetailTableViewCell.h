//
//  MovieDetailTableViewCell.h
//  RottenTomatoes
//
//  Created by Pankaj Bedse on 9/15/15.
//  Copyright (c) 2015 Pankaj Bedse. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MovieDetailTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *movieImage;

@property (weak, nonatomic) IBOutlet UITextView *movieSynopsis;
@end
