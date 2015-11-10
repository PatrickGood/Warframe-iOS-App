//
//  MeleeCllectionCollectionViewController.m
//  Warframe Codex
//
//  Created by Patrick Good on 5/3/15.
//  Copyright (c) 2015 Patrick Good. All rights reserved.
//

#import "MeleeCollectionViewController.h"
#import "Melees.h"
#import "MeleeDetailViewController.h"
#import "CollectionViewCell.h"
@interface MeleeCollectionViewController ()

@end

@implementation MeleeCollectionViewController

static NSString * const reuseIdentifier = @"MeleeCell";
MeleeDetailViewController * DetailView9 = nil;
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
    self.navigationItem.title= @"Melees";
    [super viewDidLoad];

}
- (void) viewWillAppear:(BOOL)animated{
    [self openDB];
    NSString *sql = [NSString stringWithFormat:@"SELECT * FROM Weapons Where Type = 'Melee'"];
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
  /*          char *field9 = (char *) sqlite3_column_text(statement,8);
            NSString *field9Str = [[NSString alloc] initWithUTF8String:field9];
            char *field10 = (char *) sqlite3_column_text(statement,9);
            NSString *field10Str = [[NSString alloc] initWithUTF8String:field10];
            char *field11 = (char *) sqlite3_column_text(statement,10);
            NSString *field11Str = [[NSString alloc] initWithUTF8String:field11];
            char *field12 = (char *) sqlite3_column_text(statement,11);
            NSString *field12Str = [[NSString alloc] initWithUTF8String:field12];
            */
       
            
            
            
            [[MeleeStore defaultStore] createName: field1Str
                                             Impact: field2Str
                                           Puncture: field3Str
                                              Slash: field4Str
                                 CriticalMultiplier: field5Str
                                     CriticalChance: field6Str
                                            Descrip: field7Str
                                               Type: field8Str];
            NSLog(@"Melee Name : %@  Rarity: %@", field1Str, field2Str);
            
            
            
        }
        self.collectionView.backgroundView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Stars.png"]];
    }
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any Melees that can be recreated.
}

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{

    self.Melee = [[[MeleeStore defaultStore] allMelees] objectAtIndex:[indexPath row]];
    
    DetailView9.Melee = self.Melee;
    [self performSegueWithIdentifier:@"DetailViewMelee" sender:self];
}
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    if ( [[segue identifier] isEqualToString:@"DetailViewMelee"] ) {
        
        DetailView9 = [segue destinationViewController];
        DetailView9.Melee = self.Melee;
        
        
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
    NSLog(@"%lu",(unsigned long)[[[MeleeStore defaultStore] allMelees] count]);
    return [[[MeleeStore defaultStore] allMelees] count];
    
    
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    CollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    // If there is no reusable cell of this type, create a new one
    // Set the text on the cell with the description of the possession
    // that is at the nth index of possessions, where n = row this cell
    // will appear in on the tableview
    //cell.backgroundColor = [UIColor whiteColor];
    Melees *Melee = [[[MeleeStore defaultStore] allMelees]
                           objectAtIndex:[indexPath row]];
    cell.Label.text = Melee.name;
    NSString * imageName = [NSString stringWithFormat:@"%@%@", Melee.name, @".png"];
    NSLog(@"%@", imageName);
    cell.Image.image = [UIImage imageNamed:imageName];    //UILabel *label = (UILabel *) [cell viewWithTag:100];
    //label.text = Melee.MeleeName;
    
    // Configure the cell
    
    return cell;
}

#pragma mark <UICollectionViewDelegate>


- (void)viewWillDisappear:(BOOL)animated {
    NSArray *viewControllers = self.navigationController.viewControllers;
    if (viewControllers.count > 1 && [viewControllers objectAtIndex:viewControllers.count-2] == self	) {
        // View is disappearing because a new view controller was pushed onto the stack
        //NSLog(@"New view controller was pushed");
    } else if ([viewControllers indexOfObject:self] == NSNotFound) {
        // View is disappearing because it was popped from the stack
        
        [[MeleeStore defaultStore] clearStore];// Remove all items in store array.
    }
    
}

@end
