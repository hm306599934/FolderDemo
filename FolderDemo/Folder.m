//
//  Folder.m
//  FolderDemo
//
//  Created by Tony on 19/10/2016.
//  Copyright © 2016 AirActArt. All rights reserved.
//

#import "Folder.h"

@implementation Folder
{
    NSMutableArray *children;
}

@synthesize name;

- (int)count {
    return (int)[children count];
}


- (BOOL)canClick {
    return YES;
}

- (void)addMark:(id<Mark>)mark {
    if (children == nil) {
        children = [NSMutableArray new];
    }
    [children addObject:mark];
}

- (void)removeMark:(id<Mark>)mark {
    
}

- (id<Mark>)childMarkAtIndex:(NSUInteger)index {
    return children[index];
}

@end
