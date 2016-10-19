//
//  File.h
//  FolderDemo
//
//  Created by Tony on 19/10/2016.
//  Copyright © 2016 AirActArt. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Mark.h"

@interface File : NSObject<Mark>

@property(nonatomic, retain) NSString *name;

- (void)addMark:(id<Mark>)mark;

- (void)removeMark:(id<Mark>)mark;

- (id<Mark>)childMarkAtIndex:(NSUInteger)index;

@end
