//
//  ToDo.m
//  EveryDo
//
//  Created by Chris Jones on 2017-01-24.
//  Copyright © 2017 Jonescr. All rights reserved.
//

#import "ToDo.h"

@implementation ToDo

- (instancetype)initWithTitle: (NSString *)title todoDescription: (NSString *)todoDescription priority: (NSInteger)priority isComplete: (BOOL)completed
{
    self = [super init];
    if (self) {
        _title = title;
        _todoDescription = todoDescription;
        _priority = priority;
        _completed = completed;
    }
    return self;
}


@end
