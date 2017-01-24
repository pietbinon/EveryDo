//
//  MasterViewController.m
//  EveryDo
//
//  Created by Chris Jones on 2017-01-24.
//  Copyright © 2017 Jonescr. All rights reserved.
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
    
    ToDo *todo1 = [[ToDo alloc]initWithTitle:@"Do dishes" todoDescription:@"Clean dishes, so kitchen is not digusting" priority:1 isComplete:NO];
    ToDo *todo2 = [[ToDo alloc]initWithTitle:@"Vacuuming" todoDescription:@"Get rid of dust to make socks cleaner" priority:2 isComplete:NO];
    ToDo *todo3 = [[ToDo alloc]initWithTitle:@"Buy groceries" todoDescription:@"Food is necessary for survival" priority:4 isComplete:NO];
    ToDo *todo4 = [[ToDo alloc]initWithTitle:@"Clean bathroom" todoDescription:@"Make home visitable" priority:3 isComplete:NO];
    
    NSArray *tempArray = @[todo1, todo2, todo3, todo4];
    self.toDos = [[NSMutableArray alloc]initWithArray:tempArray];
    [self.tableView reloadData];
    
}


- (void)viewWillAppear:(BOOL)animated {

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



#pragma mark - Segues

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"DetailViewController"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        ToDo *toDo = self.toDos[indexPath.row];
        DetailViewController *dvController = segue.destinationViewController;
            [dvController setDetailItem:toDo];
    }
    if ([[segue identifier] isEqualToString:@"AddNewToDoViewController"]) {
        UINavigationController *nav = segue.destinationViewController;
        AddToDoViewController *atdViewController = nav.viewControllers[0];
        atdViewController.delegate = self;
    }
}


#pragma mark - Table View

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


- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [self.toDos removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
    }
}

- (void)addToDoObject:(ToDo *)toDo {
    [self.toDos insertObject:toDo atIndex:0];
    [self.tableView reloadData];
}


@end
