//
//  TravelTableViewController.m
//  Reisekosten
//
//  Created by Heyduk Michael on 25.08.11.
//  Copyright 2011 ObjectCode GmbH. All rights reserved.
//

#import "TravelTableViewController.h"

@implementation TravelTableViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}



#pragma mark tableView

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger) section
{
	// NSInteger result = (moreResults ? [resultListEntries count] + 1 : [resultListEntries count]); 
	NSInteger result = 3;
    NSLog(@"numberOfRowsInSection = %d", result);
	return result;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell"; 
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
    }
    
    if (indexPath.row == 0)
        cell.textLabel.text = @"Trip 1";
    if (indexPath.row == 1)
        cell.textLabel.text = @"Travel 2";
    if (indexPath.row == 2)
        cell.textLabel.text = @"Travel 3";
    
	return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
	NSLog(@"didSelectRowAtIndexPath at row %d", [indexPath row]);
	// NSLog(@"TODO: operate on entry: %@", [resultListEntries objectAtIndex:row]);	
    [self.navigationController pushViewController:[[UIViewController alloc] init] animated:YES];
	
}


- (IBAction) buttonPushView:(id)sender {
    [self.navigationController pushViewController:[[UIViewController alloc] init] animated:YES];
}

@end
