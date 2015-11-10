//
//  PlanetCllectionCollectionViewController.m
//  Warframe Codex
//
//  Created by Patrick Good on 5/3/15.
//  Copyright (c) 2015 Patrick Good. All rights reserved.
//

#import "PlanetCollectionViewController.h"
#import "Planets.h"
#import "PlanetDetailViewController.h"
#import "CollectionViewCell.h"
#import "PlanetsTableViewController.h"

@interface PlanetCollectionViewController ()

@end

@implementation PlanetCollectionViewController

static NSString * const reuseIdentifier = @"Cell";
UITabBarController * TabBarPlanet = nil;
PlanetDetailViewController *detailViewPlanet = nil;
PlanetsTableViewController *tableVieWPlanet = nil;
-(NSString *) filePath {
    NSBundle * mainBundle = [NSBundle mainBundle];
    NSLog(@"%@", mainBundle);
    NSString * myFile = [mainBundle pathForResource:@"WarframeCodex" ofType: @"sqlite"];
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
    self.navigationItem.title= @"Planets";
    [super viewDidLoad];
    [self openDB];
    NSString *sql = [NSString stringWithFormat:@"SELECT * FROM Planets"];
    sqlite3_stmt *statement;
    if(sqlite3_prepare_v2(db, [sql UTF8String], -1, &statement, nil) ==SQLITE_OK)
    {
        while(sqlite3_step(statement)==SQLITE_ROW){
            char *field1 = (char *) sqlite3_column_text(statement,0);
            NSString *field1Str = [[NSString alloc] initWithUTF8String:field1];
            int field2 = (int ) sqlite3_column_int(statement,1);
            int field3 = (int ) sqlite3_column_int(statement,2);
            int field4 = (int ) sqlite3_column_int(statement,3);
            
            char *field5 = (char *) sqlite3_column_text(statement,4);
            NSString *field5Str = [[NSString alloc] initWithUTF8String:field5];
            char *field6 = (char *) sqlite3_column_text(statement,5);
            NSString *field6Str = [[NSString alloc] initWithUTF8String:field6];
            char *field7 = (char *) sqlite3_column_text(statement,6);
            NSString *field7Str = [[NSString alloc] initWithUTF8String:field7];
            char *field8 = (char *) sqlite3_column_text(statement,7);
            NSString *field8Str = [[NSString alloc] initWithUTF8String:field8];
            char *field9 = (char *) sqlite3_column_text(statement,8);
            NSString *field9Str = [[NSString alloc] initWithUTF8String:field9];
            
            
            NSLog(@"%@,%d,%d,%d,%@,%@,%@,%@,%@\n", field1Str, field2, field3, field4, field5Str, field6Str, field7Str, field8Str,field9Str);
            
            
            [[PlanetStore defaultStore] createPlanetName: field1Str EnemyLevelLow: field2 EnemyLevelHigh: field3 Missions: field4 Faction: field5Str Resource1:field6Str Resource2: field7Str Resource3:field8Str Resource4: field9Str];
            
            
           // NSLog(@"Planet Name : %@  Rarity: %@", field1Str, field5Str);
            
            
            
        }
        self.collectionView.backgroundView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Stars.png"]];
    }
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Register cell classes
    //[self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any Planets that can be recreated.
}

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{

    self.planet = [[[PlanetStore defaultStore] allPlanets] objectAtIndex:[indexPath row]];
    NSLog(@"%@,%d,%d,%d,%@,%@,%@,%@,%@", self.planet.planetName, self.planet.enemyLevelLow, self.planet.enemyLevelHigh, self.planet.missions, self.planet.faction, self.planet.resource1, self.planet.resource2, self.planet.resource3, self.planet.resource4);
    detailViewPlanet.planet = self.planet;
 //   NSLog(@"%@", self.planet.planetName);
  //  tableVieWPlanet.planet= self.planet;
    ;
    //[self performSegueWithIdentifier:@"DetailView" sender:self];
}
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    if ( [[segue identifier] isEqualToString:@"PlanetTabView"] ) {
        
        TabBarPlanet = [segue destinationViewController];
        //UITabBarController *tabar=segue.destinationViewController;
        detailViewPlanet=[TabBarPlanet.viewControllers objectAtIndex:0];
      //  tableVieWPlanet =[TabBarPlanet.viewControllers objectAtIndex:2];
        // pass data to market view controller
        //[marketViewcontroller passobject:Yourdata];
        //   or
        //marketViewcontroller.value=Yourdata
        
        // In order to manipulate the destination view controller
    }
}

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
#warning Incomplete method implementation -- Return the number of sections
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
#warning Incomplete method implementation -- Return the number of items in the section
    NSLog(@"%lu",(unsigned long)[[[PlanetStore defaultStore] allPlanets] count]);
    return [[[PlanetStore defaultStore] allPlanets] count];
    
    
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    CollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    // If there is no reusable cell of this type, create a new one
    // Set the text on the cell with the description of the possession
    // that is at the nth index of possessions, where n = row this cell
    // will appear in on the tableview
    //cell.backgroundColor = [UIColor whiteColor];
    Planets *planet = [[[PlanetStore defaultStore] allPlanets]
                           objectAtIndex:[indexPath row]];
    cell.Label.text = planet.planetName;
    NSString * imageName = [NSString stringWithFormat:@"%@%@", planet.planetName, @".png"];
    NSLog(@"%@", imageName);
    cell.Image.image = [UIImage imageNamed:imageName];    //UILabel
    
    // Configure the cell
    
    return cell;
}

#pragma mark <UICollectionViewDelegate>

/*
 // Uncomment this method to specify if the specified item should be highlighted during tracking
 - (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
 }
 */

/*
 // Uncomment this method to specify if the specified item should be selected
 - (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
 return YES;
 }
 */

/*
 // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
 - (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
 }
 
 - (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
 }
 
 - (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
 }
 */
- (void)viewWillDisappear:(BOOL)animated {
    NSArray *viewControllers = self.navigationController.viewControllers;
    if (viewControllers.count > 1 && [viewControllers objectAtIndex:viewControllers.count-2] == self) {
        // View is disappearing because a new view controller was pushed onto the stack
        //NSLog(@"New view controller was pushed");
    } else if ([viewControllers indexOfObject:self] == NSNotFound) {
        // View is disappearing because it was popped from the stack
        
        [[PlanetStore defaultStore] clearStore];// Remove all items in store array.
    }
    
}

@end
