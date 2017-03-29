//
//  MasterViewController.m
//  EveryDo
//
//  Created by Pierre Binon on 2017-01-24.
//  Copyright © 2017 Pierre Binon. All rights reserved.
//

#import "MasterViewController.h"
#import "DetailViewController.h"
#import "ToDoTableViewCell.h"
#import "ToDo.h"



@interface MasterViewController ()

@property (nonatomic) NSMutableArray *toDos;

@end




@implementation MasterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.navigationItem.leftBarButtonItem = self.editButtonItem;
    
    ToDo *todo1 = [[ToDo alloc] initWithTitle: @"Walk Roxie" todoDescription: @"She hasn't been walked since this morning...!!!" priority: 3 isComplete: NO];
    ToDo *todo2 = [[ToDo alloc] initWithTitle: @"Call Garage" todoDescription: @"Car needs to be checked for a noise coming from under it" priority: 2 isComplete: NO];
    ToDo *todo3 = [[ToDo alloc] initWithTitle: @"Buy Present for Birthday Party" todoDescription: @"She loves chocolate..." priority: 1 isComplete: NO];
    
    NSArray *tempArray = @[todo1, todo2, todo3];
    self.toDos = [[NSMutableArray alloc] initWithArray: tempArray];
    [self.tableView reloadData];
}




#pragma mark - Segues

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([[segue identifier] isEqualToString: @"DetailViewController"]) {
        
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        ToDo *toDo = self.toDos[indexPath.row];
        DetailViewController *dvController = segue.destinationViewController;
            [dvController setDetailItem: toDo];
    }
    
    if ([[segue identifier] isEqualToString:@"AddNewToDoViewController"]) {
        
        UINavigationController *nav = segue.destinationViewController;
        AddToDoViewController *atdViewController = nav.viewControllers[0];
        atdViewController.delegate = self;
    }
}




#pragma mark - Table View

- (void) addToDoObject: (ToDo *)toDo {
    
    [self.toDos insertObject: toDo atIndex :0];
    [self.tableView reloadData];
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.toDos.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    ToDoTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    ToDo *toDo = self.toDos[indexPath.row];
    [cell displayTodoItems:toDo];
    return cell;
}


- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    
    // Return NO if you do not want the specified item to be editable.
    return YES;
}

@end
