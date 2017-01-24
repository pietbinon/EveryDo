//
//  ToDoTableViewCell.m
//  EveryDo
//
//  Created by Chris Jones on 2017-01-24.
//  Copyright © 2017 Jonescr. All rights reserved.
//

#import "ToDoTableViewCell.h"
#import "ToDo.h"

@implementation ToDoTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void)displayTodoItems:(ToDo *)toDo {
    self.toDoTitleLabel.text = toDo.title;
    self.toDoSynopsis.text = toDo.todoDescription;
    self.priorityLabel.text = @(toDo.priority).stringValue;
    
}

@end
