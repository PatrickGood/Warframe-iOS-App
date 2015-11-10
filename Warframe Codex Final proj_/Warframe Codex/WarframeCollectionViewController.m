//
//  WarframeCllectionCollectionViewController.m
//  Warframe Codex
//
//  Created by Patrick Good on 5/3/15.
//  Copyright (c) 2015 Patrick Good. All rights reserved.
//

#import "WarframeCollectionViewController.h"
#import "Warframes.h"
#import "WarframeAbilitys.h"
#import  "WarframeAbilitystore.h"
#import "WarframeDetailViewController.h"
#import "CollectionViewCell.h"
@interface WarframeCollectionViewController ()

@end

@implementation WarframeCollectionViewController

static NSString * const reuseIdentifier = @"WarframeCell";
WarframeDetailViewController * DetailView6 = nil;
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
    self.navigationItem.title= @"Warframes";
    [super viewDidLoad];

}
- (void) viewWillAppear:(BOOL)animated{
    [self openDB];
    NSString *sql = [NSString stringWithFormat:@"SELECT * FROM Warframes"];
    sqlite3_stmt *statement;
    if(sqlite3_prepare_v2(db, [sql UTF8String], -1, &statement, nil) ==SQLITE_OK)
    {
        while(sqlite3_step(statement)==SQLITE_ROW){
            char *field1 = (char *) sqlite3_column_text(statement,0);
            NSString *field1Str = [[NSString alloc] initWithUTF8String:field1];
            char *field2 = (char *) sqlite3_column_text(statement,1);
            NSString *field2Str = [[NSString alloc] initWithUTF8String:field2];
            char *field3 = (char *) sqlite3_column_text(statement,2);
            NSString *field3Str = [[NSString alloc] initWithUTF8String:field3];
            char *field4 = (char *) sqlite3_column_text(statement,3);
            NSString *field4Str = [[NSString alloc] initWithUTF8String:field4];
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
            char *field10 = (char *) sqlite3_column_text(statement,9);
            NSString *field10Str = [[NSString alloc] initWithUTF8String:field10];
            char *field11 = (char *) sqlite3_column_text(statement,10);
            NSString *field11Str = [[NSString alloc] initWithUTF8String:field11];
            char *field12 = (char *) sqlite3_column_text(statement,11);
            NSString *field12Str = [[NSString alloc] initWithUTF8String:field12];
            
/*            char *field13 = (char *) sqlite3_column_text(statement,12);
            NSString *field13Str = [[NSString alloc] initWithUTF8String:field13];
  */
            
            
            [[WarframeStore defaultStore] createName: field1Str
                                        Health: field2Str
                                ShieldCapacity:field3Str
                                         Power:field4Str
                                ShieldRecharge:field5Str
                                         Armor:field6Str
                                      Stamina :field7Str
                                   SprintSpeed:field8Str
                                    Polarities:field9Str
                                  AuraPolarity:field10Str
                                     ModPoints: field11Str
                                      Descrip :field12Str];
            NSLog(@"Warframe Name : %@  Rarity: %@", field1Str, field2Str);
            
            
            
        }
        self.collectionView.backgroundView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Stars.png"]];
    }
    sqlite3_close(db);
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any Warframes that can be recreated.
}

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{

    self.Warframe = [[[WarframeStore defaultStore] allWarframes] objectAtIndex:[indexPath row]];
    
    DetailView6.Warframe = self.Warframe;
    //[self performSegueWithIdentifier:@"DetailView" sender:self];
    
    
    //NSMutableArray * abilityArray = nil;
    [self openDB];
    NSString *sql = [NSString stringWithFormat:@"SELECT * FROM WarframeAbilities WHERE Warframe ='%@'", self.Warframe.name];
    sqlite3_stmt *statement;
    if(sqlite3_prepare_v2(db, [sql UTF8String], -1, &statement, nil) ==SQLITE_OK)
    {
        while(sqlite3_step(statement)==SQLITE_ROW){
            char *field1 = (char *) sqlite3_column_text(statement,0);
            NSString *field1Str = [[NSString alloc] initWithUTF8String:field1];
            char *field2 = (char *) sqlite3_column_text(statement,1);
            NSString *field2Str = [[NSString alloc] initWithUTF8String:field2];
            char *field3 = (char *) sqlite3_column_text(statement,2);
            NSString *field3Str = [[NSString alloc] initWithUTF8String:field3];
            char *field4 = (char *) sqlite3_column_text(statement,3);
            NSString *field4Str = [[NSString alloc] initWithUTF8String:field4];
     /*       char *field5 = (char *) sqlite3_column_text(statement,4);
            NSString *field5Str = [[NSString alloc] initWithUTF8String:field5];
            char *field6 = (char *) sqlite3_column_text(statement,5);
            NSString *field6Str = [[NSString alloc] initWithUTF8String:field6];
            char *field7 = (char *) sqlite3_column_text(statement,6);
            NSString *field7Str = [[NSString alloc] initWithUTF8String:field7];
            char *field8 = (char *) sqlite3_column_text(statement,7);
            NSString *field8Str = [[NSString alloc] initWithUTF8String:field8];
            char *field9 = (char *) sqlite3_column_text(statement,8);
            NSString *field9Str = [[NSString alloc] initWithUTF8String:field9];
                        char *field10 = (char *) sqlite3_column_text(statement,9);
             NSString *field10Str = [[NSString alloc] initWithUTF8String:field10];
             char *field11 = (char *) sqlite3_column_text(statement,10);
             NSString *field11Str = [[NSString alloc] initWithUTF8String:field11];
             char *field12 = (char *) sqlite3_column_text(statement,11);
             NSString *field12Str = [[NSString alloc] initWithUTF8String:field12];
             
             char *field13 = (char *) sqlite3_column_text(statement,12);
             NSString *field13Str = [[NSString alloc] initWithUTF8String:field13];
             */
            
            
            [[WarframeAbilityStore defaultStore] createWarframe:field1Str
                                                           Name:field2Str
                                                         Energy:field3Str
                                                       Descrip :field4Str];
            NSLog(@"Warframe Name : %@  Rarity: %lu", field1Str, (unsigned long)[[[WarframeAbilityStore defaultStore] allWarframeAbilitys] count]);
            
            
            
        }
        
    }
    DetailView6.WarframeAbilities = [[[WarframeAbilityStore defaultStore] allWarframeAbilitys] mutableCopy];
    [[WarframeAbilityStore defaultStore] clearStore];
    sqlite3_close(db);
}
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    if ( [[segue identifier] isEqualToString:@"DetailViewWarframe"] ) {
        
        DetailView6 = [segue destinationViewController];
        //DetailView1.Warframe = self.Warframe;
        
        
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
    NSLog(@"%lu",(unsigned long)[[[WarframeStore defaultStore] allWarframes] count]);
    return [[[WarframeStore defaultStore] allWarframes] count];
    
    
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    CollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    // If there is no reusable cell of this type, create a new one
    // Set the text on the cell with the description of the possession
    // that is at the nth index of possessions, where n = row this cell
    // will appear in on the tableview
    //cell.backgroundColor = [UIColor whiteColor];
    Warframes *Warframe = [[[WarframeStore defaultStore] allWarframes]
                           objectAtIndex:[indexPath row]];
    cell.Label.text = Warframe.name;
    NSString * imageName = [NSString stringWithFormat:@"%@%@", Warframe.name, @".png"];
    NSLog(@"%@", imageName);
    cell.Image.image = [UIImage imageNamed:imageName];
    
    // Configure the cell
    
    return cell;
}

#pragma mark <UICollectionViewDelegate>


- (void)viewWillDisappear:(BOOL)animated {
    NSArray *viewControllers = self.navigationController.viewControllers;
    if (viewControllers.count > 1 && (([viewControllers objectAtIndex:viewControllers.count-2] == self) || ([viewControllers objectAtIndex:viewControllers.count-2] == self))) {
        // View is disappearing because a new view controller was pushed onto the stack
        //NSLog(@"New view controller was pushed");
    } else if ([viewControllers indexOfObject:self] == NSNotFound) {
        // View is disappearing because it was popped from the stack
        
        [[WarframeStore defaultStore] clearStore];// Remove all items in store array.
    }
    
}

@end
