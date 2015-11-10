//
//  PlanetsTableViewController.m
//  Homepwner
//
//  Created by Patrick Good on 4/9/15.
//  Copyright (c) 2015 Patrick Good. All rights reserved.
//

#import "PlanetsTableViewController.h"
//#import "Planets.h"
#import "PlanetDetailViewController.h"
#import "PlanetTableViewCell.h"
@interface PlanetsTableViewController ()

@end

@implementation PlanetsTableViewController
PlanetDetailViewController * detailViewPlanets = nil;
-(NSString *) filePath {
    NSBundle * mainBundle = [NSBundle mainBundle];
    NSLog(@"%@", mainBundle);
    NSString * myFile = [mainBundle pathForResource: @"WarframeCodex" ofType: @"sqlite"];
    NSLog(@"%@", myFile);
    return myFile;

}
-(void) openDB{
    if(sqlite3_open([[self filePath] UTF8String], &db) != SQLITE_OK){
        sqlite3_close(db);
        NSAssert(0, @"Database failed to open");
    }
    else{
        NSLog(@"Database opened");
    }
}


- (void)viewDidLoad {
    //[self.navigationController.navigationBar setTranslucent:NO];
    
    //self.tableView.contentInset = UIEdgeInsetsMake(20, 0, 0, 0);
    self.name = [[NSMutableArray alloc] init];
    self.survival = [[NSMutableArray alloc] init];
    self.level = [[NSMutableArray alloc]init];
    detailViewPlanets=[self.tabBarController.viewControllers objectAtIndex:0];
    NSLog(@"%@\n", detailViewPlanets.planet.planetName);
    [self openDB];
    NSString *sql = [NSString stringWithFormat:@"SELECT * FROM 'Planet Missions'"];
    sql = [NSString stringWithFormat:@"%@ WHERE Planet = '%@'", sql, detailViewPlanets.planet.planetName];
    sqlite3_stmt *statement;
    if(sqlite3_prepare_v2(db, [sql UTF8String], -1, &statement, nil) ==SQLITE_OK)
    {
        while(sqlite3_step(statement)==SQLITE_ROW){
            char *field1 = (char *) sqlite3_column_text(statement,1);
            NSString *field1Str = [[NSString alloc] initWithUTF8String:field1];
            char *field2 = (char *) sqlite3_column_text(statement,2);
            NSString *field2Str = [[NSString alloc] initWithUTF8String:field2];
            char *field3 = (char *) sqlite3_column_text(statement,3);
            NSString *field3str = [[NSString alloc] initWithUTF8String:field3];
            [self.name addObject:field1Str];
            [self.survival addObject:field2Str];
            [self.level addObject:field3str];
            //[[PlanetStore defaultStore] createPlanetName: field1Str Rarity:field2Str];
            NSLog(@"Planet Name : %@  Rarity: %@", field1Str, field2Str);
            
           
            
        }
    }

    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any Planets that can be recreated.
}
- (void) viewWillAppear:(BOOL)animated{
    [self.parentViewController.navigationController.navigationBar setTranslucent:NO];
    //self.navigationController.navigationBarHidden = true;
}
- (void) viewWillDisappear:(BOOL)animated{
    //self.navigationController.navigationBarHidden = false;
    [self.parentViewController.navigationController.navigationBar setTranslucent:YES];
}
#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return [self.name count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    // Check for a reusable cell first, use that if it exists
    PlanetTableViewCell *cell =
    [tableView dequeueReusableCellWithIdentifier:@"PlanetTableViewCell"];
    // If there is no reusable cell of this type, create a new one
    if (!cell) {
        cell = [[PlanetTableViewCell alloc]
                initWithStyle:UITableViewCellStyleDefault
                reuseIdentifier:@"PlanetTableViewCell"];
    }
    // Set the text on the cell with the description of the possession
    // that is at the nth index of possessions, where n = row this cell
    // will appear in on the tableview
    //Planets *planet = [[[PlanetStore defaultStore] allPlanets] objectAtIndex:[indexPath row]];
    NSString *missionName = [self.name objectAtIndex: [indexPath row]];
    [[cell name] setText:missionName];
    cell.name.textColor = [UIColor lightGrayColor];
    NSString *survival = [self.survival objectAtIndex: [indexPath row]];
    [[cell survival] setText:survival];
    cell.survival.textColor = [UIColor lightGrayColor];
    NSString *level = [self.level objectAtIndex: [indexPath row]];
    [[cell level] setText:level];
    cell.level.textColor = [UIColor lightGrayColor];
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

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
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    self.planet = [[[PlanetStore defaultStore] allPlanets] objectAtIndex:[indexPath row]];
    
    //DetailView.planet = self.planet;
}
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    if ( [[segue identifier] isEqualToString:@"PlanetDetailTableView"] ) {
        
        //DetailView = [segue destinationViewController];

        //Send url to another controller.
        
        // In order to manipulate the destination view controller
    }
    
}

@end
