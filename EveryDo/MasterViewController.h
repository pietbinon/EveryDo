//
//  MasterViewController.h
//  EveryDo
//
//  Created by Pierre Binon on 2017-01-24.
//  Copyright © 2017 Pierre Binon. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddToDoViewController.h"



@class DetailViewController;

@interface MasterViewController : UITableViewController <UITableViewDelegate, UITableViewDataSource, AddToDoDelegate>

@end

