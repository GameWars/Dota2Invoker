//
//  SkillViewController.m
//  Dota2Invoker
//
//  Created by Du Cong on 4/12/13.
//  Copyright (c) 2013 Du Cong. All rights reserved.
//

#import "SkillViewController.h"

@interface SkillViewController ()

@end
NSString *s[] = {@"",@"",@"",@"",@""};
@implementation SkillViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self indexToSpell];
	// Do any additional setup after loading the view.
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self indexToSpell];
    [[self skillTitle] setText:s[0]];
    [[self skillImageView] setImage:[UIImage imageNamed:s[1]]];
    [[self mana] setText:s[2]];
    [[self cd] setText:s[3]];
    [[self skillDesc] setText:s[4]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)indexToSpell
{
    switch (self.id) {
        case 0:
            s[0] = @"Cold Snap";
            s[1] = @"invoker_cold_snap_hp1.png";
            s[2] = @"100";
            s[3] = @"20";
            s[4] = @"Invoker draws the heat from an enemy, chilling them to their very core for a duration based on the level of Quas. The enemy will take damage and be briefly frozen. Further damage taken in this state will freeze the enemy again, dealing bonus damage. The enemy can only be frozen so often, but the freeze cooldown decreases based on the level of Quas.";
            break;
        
        case 1:
            s[0] = @"EMP";
            s[1] = @"invoker_emp_hp1.png";
            s[2] = @"125";
            s[3] = @"30";
            s[4] = @"Invoker builds up a charge of electromagnetic energy at a targeted location which automatically detonates after a duration based on the level of Wex. The detonation covers an area, draining mana based on the level of Wex. Deals damage for each point of mana drained.";
            break;
        case 2:
            s[0] = @"Sun Strike";
            s[1] = @"invoker_sun_strike_hp1.png";
            s[2] = @"175";
            s[3] = @"30";
            s[4] = @"Sends a catastrophic ray of fierce energy from the sun at any targeted location, incinerating all enemies standing beneath it once it reaches the Earth. Deals damage based on the level of Exort, however this damage is spread evenly over all enemies hit.";
            break;
        case 3:
            s[0] = @"Ghost Walk";
            s[1] = @"invoker_ghost_walk_hp1.png";
            s[2] = @"200";
            s[3] = @"35";
            s[4] = @"Invoker manipulates the ice and electrical energies around him, rendering his body invisible. The elemental imbalance created as a consequence slows nearby enemies based on the level of Quas, and slows Invoker as well based on the level of Wex.";
            break;
        case 4:
            s[0] = @"Ice Wall";
            s[1] = @"invoker_ice_wall_hp1.png";
            s[2] = @"175";
            s[3] = @"25";
            s[4] = @"Generates a wall of solid ice directly in front of Invoker for a duration based on the level of Quas. The bitter cold emanating from it greatly slows nearby enemies based on the level of Quas and deals damage each second based on the level of Exort.";
            break;
        case 5:
            s[0] = @"Tornado";
            s[1] = @"invoker_tornado_hp1.png";
            s[2] = @"150";
            s[3] = @"30";
            s[4] = @"Unleashes a fast moving tornado that picks up enemy units in its path, suspending them helplessly in the air shortly before allowing them to plummet to their doom. Travels further based on the level of Wex. Holds enemies in the air for a duration based on the level of Quas. Deals damage based on the levels of Quas and Wex.";
            break;
        case 6:
            s[0] = @"Alacrity";
            s[1] = @"invoker_alacrity_hp1.png";
            s[2] = @"10=25";
            s[3] = @"30";
            s[4] = @"Invoker infuses an ally with an immense surge of energy, increasing their attack speed based on the level of Wex and their damage based on the level of Exort.";
            break;
        case 7:
            s[0] = @"Forge Spirit";
            s[1] = @"invoker_forge_spirit_hp1.png";
            s[2] = @"100";
            s[3] = @"20";
            s[4] = @"Invoker draws the heat from an enemy, chilling them to their very core for a duration based on the level of Quas. The enemy will take damage and be briefly frozen. Further damage taken in this state will freeze the enemy again, dealing bonus damage. The enemy can only be frozen so often, but the freeze cooldown decreases based on the level of Quas.";
            break;
        case 8:
            s[0] = @"Chaos Meteor";
            s[1] = @"invoker_chaos_meteor_hp1.png";
            s[2] = @"200";
            s[3] = @"55";
            s[4] = @"Invoker pulls a flaming meteor from space onto the targeted location. Upon landing, the meteor rolls forward, constantly dealing damage based on the level of Exort, and rolling further based on the level of Wex. Units hit by the meteor will also be set on fire for a short time, receiving additional damage based on the level of Exort.";
            break;
        case 9:
            s[0] = @"Deafening Blast";
            s[1] = @"invoker_deafening_blast_hp1.png";
            s[2] = @"200";
            s[3] = @"40";
            s[4] = @"Invoker unleashes a mighty sonic wave in front of him, dealing damage to any enemy unit it collides with based on the level of Exort. The sheer impact from the blast is enough to knock those enemy units back for a duration based on the level of Quas, then disarm their attacks for a duration based on the level of Wex.";
            break;

            
        default:
            s[0] = @"Deafening Blast";
            s[1] = @"invoker_deafening_blast_hp1.png";
            s[2] = @"200";
            s[3] = @"40";
            s[4] = @"Invoker unleashes a mighty sonic wave in front of him, dealing damage to any enemy unit it collides with based on the level of Exort. The sheer impact from the blast is enough to knock those enemy units back for a duration based on the level of Quas, then disarm their attacks for a duration based on the level of Wex.";
            break;
    }
}


@end
