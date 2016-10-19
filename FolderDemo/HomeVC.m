//
//  HomeVC.m
//  FolderDemo
//
//  Created by Tony on 19/10/2016.
//  Copyright © 2016 AirActArt. All rights reserved.
//

#import "HomeVC.h"
#import "File.h"
#import "Folder.h"

@interface HomeVC ()

@end

@implementation HomeVC

@synthesize rootFile;

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return rootFile.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 1;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    id<Mark> tempFile = [rootFile childMarkAtIndex:indexPath.section];
    
    if (tempFile.canClick) {
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }else {
        cell.accessoryType = UITableViewCellAccessoryNone;
    }
    cell.detailTextLabel.text = tempFile.canClick ? @"文件夹" : @"文件";
    cell.detailTextLabel.text = tempFile.name;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    UIStoryboard *board = [UIStoryboard storyboardWithName:@"Main" bundle:nil];

    HomeVC *next = [board instantiateViewControllerWithIdentifier:@"HomeVC"];

    id<Mark> tempFile = [rootFile childMarkAtIndex:indexPath.section];
    next.rootFile = tempFile;
    
    [self.navigationController pushViewController:next animated:YES];
}

@end
