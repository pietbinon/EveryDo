//
//  ToDoTableViewCell.h
//  EveryDo
//
//  Created by Pierre Binon on 2017-03-27.
//  Copyright © 2017 Pierre Binon. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ToDo;



@interface ToDoTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *toDoTitleLabel;
@property (weak, nonatomic) IBOutlet UILabel *toDoSynopsis;
@property (weak, nonatomic) IBOutlet UILabel *priorityLabel;

-(void) displayTodoItems: (ToDo *)todo;

@end
