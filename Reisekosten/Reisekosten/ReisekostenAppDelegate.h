//
//  ReisekostenAppDelegate.h
//  Reisekosten
//
//  Created by Heyduk Michael on 24.08.11.
//  Copyright 2011 ObjectCode GmbH. All rights reserved.
//

#import <UIKit/UIKit.h>
@class TravelController;

@interface ReisekostenAppDelegate : NSObject <UIApplicationDelegate, UITabBarControllerDelegate>

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet UITabBarController *tabBarController;
@property (nonatomic, retain) IBOutlet TravelController *travelController;

@end
