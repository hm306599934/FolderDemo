//
//  File.m
//  FolderDemo
//
//  Created by Tony on 19/10/2016.
//  Copyright © 2016 AirActArt. All rights reserved.
//

#import "File.h"

@implementation File

@synthesize name;

-(int)count {
    return 0;
}

- (BOOL)canClick {
    return NO;
}

- (void)addMark:(id<Mark>)mark {

}

- (void)removeMark:(id<Mark>)mark {

}

- (id<Mark>)childMarkAtIndex:(NSUInteger)index {
    return nil;
}

@end
