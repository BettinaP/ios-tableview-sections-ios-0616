//
//  FISTableViewController.m
//  ios-tableview-sections
//
//  Created by Tom OMalley on 5/28/15.
//  Copyright (c) 2015 The Flatiron School. All rights reserved.
//

#import "FISTableViewController.h"

@interface FISTableViewController ()

@end

@implementation FISTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    FISStudent *ismael = [[FISStudent alloc]initWithName:@"Ismael" favoriteThings:@[@"chia seeds", @"quiet", @"design", @"Kim K."]];
    FISStudent *jordan =[[FISStudent alloc]initWithName:@"Jordan" favoriteThings:@[@"pet GIFs", @"red Pandas", @"Penguin hockey", @"greek yogurt"]];
    FISStudent *chris =[[FISStudent alloc]initWithName:@"Chris" favoriteThings:@[@"Game of Thrones", @"history", @"audio books", @"pizza"]];
    FISStudent *sara = [[FISStudent alloc] initWithName:@"Sara" favoriteThings:@[@"Penny Dreadful", @"Harry Potter", @"grilled cheese", @"facebook"]];
    
    self.students = @[ismael, jordan, chris, sara];
    
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    // Return the number of sections.
    return (NSInteger)[self.students count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    FISStudent *currentStudent = self.students[section];
    // Return the number of rows in the section.
    return (NSInteger)[currentStudent.favoriteThings count];
    
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"expandingCell" forIndexPath:indexPath];
    
     //Configure the cell...
    FISStudent *currentStudentCell = self.students[indexPath.section];
    cell.textLabel.text = currentStudentCell.favoriteThings[indexPath.row];
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%li", indexPath.row +1];
    
    return cell;
}


-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    
    FISStudent *currentStudentName = self.students[section];
    
    return currentStudentName.name;

}
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}


-(NSInteger)tableView:(UITableView *)tableView indentationLevelForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 2;

}

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
