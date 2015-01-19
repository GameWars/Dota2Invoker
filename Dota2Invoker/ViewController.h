//
//  ViewController.h
//  Dota2Invoker
//
//  Created by Du Cong on 4/12/13.
//  Copyright (c) 2013 Du Cong. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SkillCell.h"
@interface ViewController : UIViewController<UICollectionViewDataSource, UICollectionViewDelegate>



@property (weak, nonatomic) IBOutlet UIImageView *skillImageView;
@property (weak, nonatomic) IBOutlet UICollectionView *skillCollectionView;
@property (weak, nonatomic) IBOutlet UIImageView *fire;
@property (weak, nonatomic) IBOutlet UIImageView *wex;
@property (weak, nonatomic) IBOutlet UIImageView *ice;
@property (weak, nonatomic) IBOutlet UIImageView *invoke;
- (IBAction)WexTap:(id)sender;
- (IBAction)InvokeTap:(id)sender;
- (IBAction)FireTap:(id)sender;
- (IBAction)IceTap:(id)sender;
@property (weak, nonatomic) IBOutlet UIImageView *orb1;
@property (weak, nonatomic) IBOutlet UIImageView *orb2;
@property (weak, nonatomic) IBOutlet UIImageView *orb3;
@end
