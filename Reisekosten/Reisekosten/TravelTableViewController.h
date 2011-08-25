//
//  TravelTableViewController.h
//  Reisekosten
//
//  Created by Heyduk Michael on 25.08.11.
//  Copyright 2011 ObjectCode GmbH. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "TravelDetailViewController.h"

@interface TravelTableViewController : UITableViewController <UITableViewDelegate, UITableViewDataSource> {
    IBOutlet UITableView *travelsTableView;
    
    TravelDetailViewController *travelDetailViewController;

}

@property(nonatomic, retain) TravelDetailViewController *travelDetailViewController;

@end
