//
//  TravelController2.h
//  Reisekosten
//
//  Created by Heyduk Michael on 24.08.11.
//  Copyright 2011 ObjectCode GmbH. All rights reserved.
//


#import <UIKit/UIKit.h>

@interface TravelController2 : UIViewController<UITableViewDataSource> {
    
    UITableView *myTableView;
}

@property (nonatomic, retain) IBOutlet UITableView *myTableView;

@end
