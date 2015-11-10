//
//  CategoryTableViewController.m
//  UKMaAPPIOS
//
//  Created by Patrick Good on 4/15/15.
//  Copyright (c) 2015 Patrick Good. All rights reserved.
//
/*
 Abstract:
 File responsible for displaying the categories that are listed in the file.
 */

#import "ResearchCategoryTableViewController.h"
#import "ResearchsTableViewController.h"
//#import "ResearchTableViewCell.h"
@interface ResearchCategoryTableViewController ()

@end

@implementation ResearchCategoryTableViewController
ResearchsTableViewController *ResearchcategoryDetailViewController = nil;
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
    self.navigationItem.title = @"Labs";
    
    [self openDB];
    NSString *sql = [NSString stringWithFormat:@"SELECT DISTINCT Lab FROM Research"];
    sqlite3_stmt *statement;
    if(sqlite3_prepare_v2(db, [sql UTF8String], -1, &statement, nil) ==SQLITE_OK)
    {
        
        NSMutableArray *tempCategory = [[NSMutableArray alloc] init];
        while(sqlite3_step(statement)==SQLITE_ROW){
            
            char *field1 = (char *) sqlite3_column_text(statement,0);
            NSString *field1Str = [[NSString alloc] initWithUTF8String:field1];
            //NSLog(@"%@",field1Str);
            
            
            [tempCategory addObject:field1Str];

            
        }
        self.categories = tempCategory;
        //[[ResearchStore defaultStore] clearStore];
        
    }


    [super viewDidLoad];
    
 
    sqlite3_close(db);
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
    return [self.categories count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    // Check for a reusable cell first, use that if it exists
    UITableViewCell *cell =
    [tableView dequeueReusableCellWithIdentifier:@"ResearchTableViewCell"];
    // If there is no reusable cell of this type, create a new one
    if (!cell) {
        cell = [[UITableViewCell alloc]
                initWithStyle:UITableViewCellStyleDefault
                reuseIdentifier:@"ResearchTableViewCell"];
    }
    // Set the text on the cell with the description of the possession
    // that is at the nth index of possessions, where n = row this cell
    // will appear in on the tableview
    NSString *Research = [self.categories objectAtIndex:[indexPath row]];
    [[cell textLabel] setText: Research];
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *selectedResearch = [self.categories objectAtIndex:[indexPath row]];
    ResearchcategoryDetailViewController.pickedCategory2 = selectedResearch;
}



#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    if ( [[segue identifier] isEqualToString:@"Researchcategories2table"] ) {
        
       ResearchcategoryDetailViewController = [segue destinationViewController];
    
    }

}


@end
