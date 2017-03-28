//
//  AddToDoViewController.h
//  EveryDo
//
//  Created by Pierre Binon on 2017-03-27.
//  Copyright © 2017 Pierre Binon. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ToDo;



@protocol AddToDoDelegate <NSObject>

-(void) addToDoObject: (ToDo *)todo;

@end




@interface AddToDoViewController : UIViewController

@property (strong, nonatomic) id<AddToDoDelegate> delegate;

@end
