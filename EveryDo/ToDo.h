//
//  ToDo.h
//  EveryDo
//
//  Created by Pierre Binon on 2017-03-27.
//  Copyright © 2017 Pierre Binon. All rights reserved.
//

#import <Foundation/Foundation.h>




@interface ToDo : NSObject

@property (nonatomic) NSString *title;
@property (nonatomic) NSString *todoDescription;
@property (nonatomic) NSInteger priority;
@property (nonatomic) BOOL completed;

- (instancetype) initWithTitle: (NSString *)title todoDescription: (NSString *)todoDescription priority: (NSInteger)priority isComplete: (BOOL)completed;

@end
