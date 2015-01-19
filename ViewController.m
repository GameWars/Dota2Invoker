//
//  ViewController.m
//  Dota2Invoker
//
//  Created by Du Cong on 4/12/13.
//  Copyright (c) 2013 Du Cong. All rights reserved.
//

#import "ViewController.h"
#import "SkillCell.h"
#import "SkillViewController.h"
@interface ViewController ()
@end

int orb[3] = {0,0,0};
int orbIndex = 0;
int spellIndex = 0;

@implementation ViewController
- (void)viewDidLoad
{
    [super viewDidLoad];
    [[self skillCollectionView]setDataSource:self];
    [[self skillCollectionView]setDelegate:self];
    [self updateOrb];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)view numberOfItemsInSection:(NSInteger)section;
{
    return 1;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)cv cellForItemAtIndexPath:(NSIndexPath *)indexPath;
{
    // we're going to use a custom UICollectionViewCell, which will hold an image and its label
    //
    SkillCell *cell = [cv dequeueReusableCellWithReuseIdentifier:@"SkillCell" forIndexPath:indexPath];
    
    
    // load the image for this cell
    NSString *imageToLoad = @"invoker_chaos_meteor_hp1.png";
    [[cell skillImageView]setImage:[UIImage imageNamed:imageToLoad]];

    
    return cell;
}



- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"showSkill"])
    {
        SkillViewController *sc = [segue destinationViewController];
        sc.id = spellIndex;
    }
}



- (IBAction)WexTap:(id)sender {
    orb[orbIndex] = 1;
    orbIndex = (orbIndex + 1) % 3;
    [self updateOrb];
}

- (IBAction)InvokeTap:(id)sender {
    [[self skillImageView] setImage:[UIImage imageNamed:[self indexToSpell]]];

}

- (IBAction)FireTap:(id)sender {
    orb[orbIndex] = 2;
    orbIndex = (orbIndex + 1) % 3;
    [self updateOrb];
}

- (IBAction)IceTap:(id)sender {
    orb[orbIndex] = 0;
    orbIndex = (orbIndex + 1) % 3;
    [self updateOrb];
}

- (void)updateOrb{
    [[self orb1] setImage:[UIImage imageNamed:[self indexToString:orb[0]]]];
    [[self orb2] setImage:[UIImage imageNamed:[self indexToString:orb[1]]]];
    [[self orb3] setImage:[UIImage imageNamed:[self indexToString:orb[2]]]];
}

- (NSString *)indexToString:(int)i
{
    if (i == 0) {
        return @"invoker_quas_hp1.png";
    }
    if (i == 1) {
        return @"invoker_wex_hp1.png";
    }
    if (i == 2) {
        return @"invoker_exort_hp1.png";
    }
    return @"";
}

- (NSString *)indexToSpell
{
    int Nq = 0;
    int Nw = 0;
    int Ne = 0;
    for(int i = 0; i < 3; i++)
    {
        if(orb[i]==0)Nq++;
        if(orb[i]==1)Nw++;
        if(orb[i]==2)Ne++;
    }
    
    if(Nq == 3)
    {
        spellIndex = 0;
        return @"invoker_cold_snap_hp1.png";
    }
    if(Nw == 3)
    {
        spellIndex = 1;
        return @"invoker_emp_hp1.png";
    }
    if(Ne == 3)
    {
        spellIndex = 2;
        return @"invoker_sun_strike_hp1.png";
    }
    if(Nq == 2 && Nw == 1)
    {
        spellIndex = 3;
        return @"invoker_ghost_walk_hp1.png";
    }
    if(Nq == 2 && Ne == 1)
    {
        spellIndex = 4;
        return @"invoker_ice_wall_hp1.png";
    }
    if(Nw == 2 && Nq == 1)
    {
        spellIndex = 5;
        return @"invoker_tornado_hp1.png";
    }
    if(Nw == 2 && Ne == 1)
    {
        spellIndex = 6;
        return @"invoker_alacrity_hp1.png";
    }
    if(Ne == 2 && Nq == 1)
    {
        spellIndex = 7;
        return @"invoker_forge_spirit_hp1.png";
    }
    if(Ne == 2 && Nw == 1)
    {
        spellIndex = 8;
        return @"invoker_chaos_meteor_hp1.png";
    }
    spellIndex = 9;
    return @"invoker_deafening_blast_hp1.png";
    
}

@end
