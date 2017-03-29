//
//  DetailViewController.m
//  EveryDo
//
//  Created by Pierre Binon on 2017-01-24.
//  Copyright © 2017 Pierre Binon. All rights reserved.
//

#import "DetailViewController.h"
#import "ToDo.h"



@interface DetailViewController ()

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *descriptionLabel;
@property (weak, nonatomic) IBOutlet UILabel *priorityLabel;
@property (strong, nonatomic) ToDo *detailTodo;

@end




@implementation DetailViewController

#pragma mark - Managing the detail item

- (void)viewDidLoad {
    
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self configureView];
}


- (void) setDetailItem: (id)newDetailItem {
    
    if (_detailItem != newDetailItem) {
        
        _detailItem = newDetailItem;
        self.detailTodo = newDetailItem;
        [self configureView];
    }
}


- (void) configureView {
    
    // Update the user interface for the detail item.
    if (self.detailItem) {
        
        self.titleLabel.text = self.detailTodo.title;
        self.descriptionLabel.text = self.detailTodo.todoDescription;
        self.priorityLabel.text = @(self.detailTodo.priority).stringValue;
    }
}

@end
