//
//  ResourcesTableViewController.m
//  Homepwner
//
//  Created by Patrick Good on 4/9/15.
//  Copyright (c) 2015 Patrick Good. All rights reserved.
//

#import "ResourcesTableViewController.h"
#import "Resources.h"
#import "ResourceDetailViewController.h"

@interface ResourcesTableViewController ()

@end

@implementation ResourcesTableViewController
ResourceDetailViewController * DetailView = nil;
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



- (id)init {
    // Call the superclass's designated initializer
    self = [super initWithStyle:UITableViewStyleGrouped];
    if (self) {
        for (int i = 0; i < 10; i++) {
            [[ResourceStore defaultStore] createResourceName: @"Name"  Rarity:@"Common"];
        }
    }
    return self;
}
- (id)initWithStyle:(UITableViewStyle)style
{
    return [self init];
}- (void)viewDidLoad {
    
    [self openDB];
    NSString *sql = [NSString stringWithFormat:@"SELECT * FROM Resources"];
    sqlite3_stmt *statement;
    if(sqlite3_prepare_v2(db, [sql UTF8String], -1, &statement, nil) ==SQLITE_OK)
    {
        while(sqlite3_step(statement)==SQLITE_ROW){
            char *field1 = (char *) sqlite3_column_text(statement,0);
            NSString *field1Str = [[NSString alloc] initWithUTF8String:field1];
            char *field2 = (char *) sqlite3_column_text(statement,1);
            NSString *field2Str = [[NSString alloc] initWithUTF8String:field2];
            [[ResourceStore defaultStore] createResourceName: field1Str Rarity:field2Str];
            NSLog(@"Resource Name : %@  Rarity: %@", field1Str, field2Str);
            
           
            
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
    // Dispose of any resources that can be recreated.
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
    return [[[ResourceStore defaultStore] allResources] count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    // Check for a reusable cell first, use that if it exists
    UITableViewCell *cell =
    [tableView dequeueReusableCellWithIdentifier:@"UIResourcesTableViewCell"];
    // If there is no reusable cell of this type, create a new one
    if (!cell) {
        cell = [[UITableViewCell alloc]
                initWithStyle:UITableViewCellStyleDefault
                reuseIdentifier:@"UIResourceTableViewCell"];
    }
    // Set the text on the cell with the description of the possession
    // that is at the nth index of possessions, where n = row this cell
    // will appear in on the tableview
    Resources *resource = [[[ResourceStore defaultStore] allResources]
                     objectAtIndex:[indexPath row]];
    [[cell textLabel] setText:[resource resourceName]];
    cell.textLabel.textColor = [UIColor lightGrayColor];
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
    self.resource = [[[ResourceStore defaultStore] allResources] objectAtIndex:[indexPath row]];
    
    DetailView.resource = self.resource;
}
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    if ( [[segue identifier] isEqualToString:@"DetailView"] ) {
        
        DetailView = [segue destinationViewController];

        //Send url to another controller.
        
        // In order to manipulate the destination view controller
    }
    
}


@end
