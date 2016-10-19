//
//  ViewController.m
//  FolderDemo
//
//  Created by Tony on 19/10/2016.
//  Copyright © 2016 AirActArt. All rights reserved.
//

#import "ViewController.h"
#import "File.h"
#import "Folder.h"
#import "HomeVC.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    

    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)push:(id)sender {
    [self performSegueWithIdentifier:@"Push" sender:nil];
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    Folder *root = [Folder new];
    root.name = @"文件夹";
    
    File *file0_0 = [File new];
    file0_0.name = @"文件0_0";
    [root addMark:file0_0];
    
    Folder *folder0_1 = [Folder new];
    folder0_1.name = @"文件夹";
    [root addMark:folder0_1];
    
    File *file1_0 = [File new];
    file1_0.name = @"文件0_0";
    [folder0_1 addMark:file1_0];
    
    Folder *folder1_1 = [Folder new];
    folder1_1.name = @"文件夹";
    [folder0_1 addMark:folder1_1];
    
    Folder *folder1_2 = [Folder new];
    folder1_2.name = @"文件夹";
    [folder0_1 addMark:folder1_2];
    
    File *file3_0 = [File new];
    file3_0.name = @"文件3_0";
    [folder1_2 addMark:file3_0];
    
    
    HomeVC *home = [segue destinationViewController];
    home.rootFile = root;
    
}



@end
