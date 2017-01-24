//
//  AddToDoViewController.h
//  EveryDo
//
//  Created by Chris Jones on 2017-01-24.
//  Copyright © 2017 Jonescr. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ToDo;

@protocol AddToDoDelegate <NSObject>

-(void)addToDoObject: (ToDo *)todo;

@end

@interface AddToDoViewController : UIViewController

@property (strong, nonatomic) id<AddToDoDelegate>delegate;

@end
