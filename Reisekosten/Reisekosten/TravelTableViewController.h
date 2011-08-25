//
//  TravelTableViewController.h
//  Reisekosten
//
//  Created by Heyduk Michael on 25.08.11.
//  Copyright 2011 ObjectCode GmbH. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TravelTableViewController : UITableViewController <UITableViewDelegate, UITableViewDataSource> {
    IBOutlet UITableView *travelsTableView;
}

@end
