//
//  HomeVC.h
//  FolderDemo
//
//  Created by Tony on 19/10/2016.
//  Copyright © 2016 AirActArt. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Mark.h"

@interface HomeVC : UITableViewController

@property(nonatomic, strong) id<Mark> rootFile;

@end
