//
//  ToDoTableViewCell.h
//  EveryDo
//
//  Created by Chris Jones on 2017-01-24.
//  Copyright © 2017 Jonescr. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ToDo;

@interface ToDoTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *toDoTitleLabel;
@property (weak, nonatomic) IBOutlet UILabel *toDoSynopsis;
@property (weak, nonatomic) IBOutlet UILabel *priorityLabel;

-(void)displayTodoItems:(ToDo *)todo;

@end
