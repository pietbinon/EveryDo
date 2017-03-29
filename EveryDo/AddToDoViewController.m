//
//  AddToDoViewController.m
//  EveryDo
//
//  Created by Pierre Binon on 2017-01-24.
//  Copyright © 2017 Pierre Binon. All rights reserved.
//

#import "AddToDoViewController.h"
#import "ToDo.h"


@interface AddToDoViewController ()

@property (weak, nonatomic) IBOutlet UITextField *addTitle;
@property (weak, nonatomic) IBOutlet UITextField *addDescription;
@property (weak, nonatomic) IBOutlet UITextField *addPriority;

@end






@implementation AddToDoViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (void)didReceiveMemoryWarning {
    
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction) doneButton: (UIBarButtonItem *) sender {
    
    ToDo *toDo = [[ToDo alloc] initWithTitle: self.addTitle.text todoDescription: self.addDescription.text priority: [self.addPriority.text integerValue] isComplete: NO];
    [self.delegate addToDoObject: toDo];
    [self dismissViewControllerAnimated: YES completion: nil];
}

@end
