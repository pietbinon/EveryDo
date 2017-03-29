//
//  ToDoTableViewCell.m
//  EveryDo
//
//  Created by Pierre Binon on 2017-01-24.
//  Copyright © 2017 Pierre Binon. All rights reserved.
//

#import "ToDoTableViewCell.h"
#import "ToDo.h"


@interface ToDoTableViewCell()
@property (weak, nonatomic) IBOutlet UILabel *toDoTitleLabel;
@property (weak, nonatomic) IBOutlet UILabel *toDoSynopsis;
@property (weak, nonatomic) IBOutlet UILabel *priorityLabel;
@property (nonatomic) UISwipeGestureRecognizer *swipe;
@end
@implementation ToDoTableViewCell

- (void)awakeFromNib {
    
    [super awakeFromNib];
    self.swipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(wasSwipped:)];
    [self.swipe setDirection:UISwipeGestureRecognizerDirectionRight];
    [self addGestureRecognizer:self.swipe];
    
}

- (void)setTodo:(ToDo *)todo {
    _todo = todo;
    [self displayTodoItems];
}

- (void)wasSwipped:(UISwipeGestureRecognizer *)sender {
    self.todo.completed = !self.todo.completed;
    [self displayTodoItems];
}


- (void) setSelected: (BOOL) selected animated: (BOOL) animated {
    
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


- (void)displayTodoItems {
    
    NSNumber *completed = self.todo.completed ? @1 : @0;
    
    NSDictionary<NSString *,id> *titleAttributes = @{NSStrikethroughStyleAttributeName: completed };
    NSMutableAttributedString *attributedTitle = [[NSMutableAttributedString alloc] initWithString:self.todo.title attributes:titleAttributes];
    self.toDoTitleLabel.attributedText = attributedTitle;
    self.toDoSynopsis.text = self.todo.todoDescription;
    self.priorityLabel.text = @(self.todo.priority).stringValue;
}

- (void)dealloc {
    [self removeGestureRecognizer:self.swipe];
}

@end
