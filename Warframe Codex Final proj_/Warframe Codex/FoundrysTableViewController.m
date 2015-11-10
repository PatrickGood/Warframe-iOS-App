//
//  FoundrysTableViewController.m
//  UKMaAPPIOS
//
//  Created by Patrick Good on 4/15/15.
//  Copyright (c) 2015 Patrick Good. All rights reserved.
//
/*
 Abstract:
 File responsible for displaying the Foundrys objects that were sorted by their category in a table view.
 */

#import "FoundrysTableViewController.h"
#import "FoundryDetailViewController.h"

@interface FoundrysTableViewController ()

@end

@implementation FoundrysTableViewController
FoundryDetailViewController * FoundrysDetailViewController = nil;

-(NSString *) filePath {//Get File path to database
    NSBundle * mainBundle = [NSBundle mainBundle];
    NSLog(@"%@", mainBundle);
    NSString * myFile = [mainBundle pathForResource: @"WarframeCodex" ofType: @"sqlite"];
    NSLog(@"%@", myFile);
    return myFile;
    
}
-(void) openDB{// Open Database
    if(sqlite3_open([[self filePath] UTF8String], &db) != SQLITE_OK){
        sqlite3_close(db);
        NSAssert(0, @"Database failed to open");
    }
    else{
        NSLog(@"Database opened");
    }
}

- (void)viewDidLoad {
    self.navigationItem.title = self.pickedCategory;// Set title of navigation itme to the name of the category selected.
    //NSArray * FoundrysArray = [[FoundryStore defaultStore] allFoundrys];
    [self openDB];
    //sqllight query.
    NSLog(@"aaaa%@aaaa",self.pickedCategory);
    NSString *sql = [NSString stringWithFormat:@"SELECT * FROM Foundry WHERE Category = '%@'", self.pickedCategory];
    //sql = [sql stringByAppendingString:self.pickedCategory];
    sqlite3_stmt *statement;
    if(sqlite3_prepare_v2(db, [sql UTF8String], -1, &statement, nil) ==SQLITE_OK)
    {
        //Load information into the FoundryStore Array.
        //int i = 0;
        while(sqlite3_step(statement)==SQLITE_ROW){
            NSString *field2Str;
            NSString *field5Str;
            NSString *field3Str;
            NSString *field4Str;
            char *field1 = (char *) sqlite3_column_text(statement,0);
            NSString *field1Str = [[NSString alloc] initWithUTF8String:field1];
            char *field2 = (char *) sqlite3_column_text(statement,1);
            if(field2 == NULL)
            {
                field2Str = @"NULL";
            }
            else{
                field2Str = [[NSString alloc] initWithUTF8String:field2];
            }
            
            char * field3 = (char *) sqlite3_column_text(statement,2);
            field3Str = [[NSString alloc] initWithUTF8String:field3];
            char * field4 = (char *) sqlite3_column_text(statement,3);
            field4Str = [[NSString alloc] initWithUTF8String:field4];
            char *field5 = (char *) sqlite3_column_text(statement,4);
            if(field5 == NULL)
            {
                field5Str = @"NULL";
            }
            else{
                field5Str = [[NSString alloc] initWithUTF8String:field5];
            }
            
            
            
            
            
            [[FoundryStore defaultStore] createCategory:field1Str
                                                   Name:field2Str
                                            Acquisition:field3Str
                                             CraftPrice:field4Str
                                              CraftTime:field5Str];
            NSLog(@"Foundry Name : %@  FoundryNickName: %@, Foundry URL: %@, FoundryType: %@, FoundryHours: %@ ", field1Str, field2Str, field3Str, field4Str, field5Str);
            
            
        }
    }
    
    sqlite3_close(db);
    [super viewDidLoad];
    


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
    return [[[FoundryStore defaultStore] allFoundrys] count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    // Check for a reusable cell first, use that if it exists
    UITableViewCell *cell =
    [tableView dequeueReusableCellWithIdentifier:@"UIFoundryViewCell"];
    // If there is no reusable cell of this type, create a new one
    if (!cell) {
        cell = [[UITableViewCell alloc]
                initWithStyle:UITableViewCellStyleDefault
                reuseIdentifier:@"UIFoundryViewCell"];
    }
    // Set the text on the cell with the description of the possession
    // that is at the nth index of possessions, where n = row this cell
    // will appear in on the tableview
    Foundry *Foundry = [[[FoundryStore defaultStore] allFoundrys]
                          objectAtIndex:[indexPath row]];
    [[cell textLabel] setText:[Foundry name]];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    _selectedFoundry = [[[FoundryStore defaultStore] allFoundrys] objectAtIndex:[indexPath row]];
    NSLog(@"Dog");
    //Testing NSLog(@"Name: %@, URL: %@, Hours: %@", selectedFoundry.FoundryName, selectedFoundry.FoundryUrl, selectedFoundry.FoundryHours);
     FoundrysDetailViewController.pickedFoundry = _selectedFoundry;
   // [self performSegueWithIdentifier: ];
    [self performSegueWithIdentifier:@"DetailFoundry" sender:self];
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    NSLog(@"Cat");
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    if ( [[segue identifier] isEqualToString:@"DetailFoundry"] ) {
        
        FoundrysDetailViewController = [segue destinationViewController];
        FoundrysDetailViewController.pickedFoundry = _selectedFoundry;        // In order to manipulate the destination view controller
        //categoryDetailViewController.pickedCategory = self.pickedCategory;
    }
}

- (void)viewWillDisappear:(BOOL)animated {
    NSArray *viewControllers = self.navigationController.viewControllers;
    if (viewControllers.count > 1 && [viewControllers objectAtIndex:viewControllers.count-2] == self) {
        // View is disappearing because a new view controller was pushed onto the stack
        //NSLog(@"New view controller was pushed");
    } else if ([viewControllers indexOfObject:self] == NSNotFound) {
        // View is disappearing because it was popped from the stack
        
        [[FoundryStore defaultStore] clearStore];// Remove all items in store array.
    }
    
}
@end
