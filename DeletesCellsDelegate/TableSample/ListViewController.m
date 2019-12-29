//
//  ListViewController.m
//  SecondVCDeletesCells
//
//  Created by Javier Calderon Jr. on 12/29/19.
//  Copyright © 2019 RockefellerFiles. All rights reserved.
//

#import "ListViewController.h"
#import "ViewController.h"

@interface ListViewController ()

@property (nonatomic, weak) IBOutlet UITableView *listview;
@property (nonatomic, strong) NSMutableArray *dataSourceArray;
@end

@implementation ListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.dataSourceArray = [[NSMutableArray alloc]initWithObjects: @"First", @"Second", @"Third", @"Fourth", @"Fifth", @"Sixth", nil];
    [self.listview reloadData];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"moveToDetailView"]) {
        ViewController *objViewController = segue.destinationViewController;
        objViewController.delegate = self;
    }
}


#pragma mark - UItableview methods

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dataSourceArray.count;
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
   
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ListViewCell"];
    cell.textLabel.text = [self.dataSourceArray objectAtIndex:indexPath.row];
    return cell;
    
}
#pragma mark - Custom methods

-(IBAction)moveToDetailView:(id)sender
{
    [self performSegueWithIdentifier:@"moveToDetailView" sender:self];
}


-(void)deleteRowInTableview:(NSInteger)rowToDelete
{
    [self.dataSourceArray removeObjectAtIndex:rowToDelete];
    [self.listview reloadData];
}
@end
