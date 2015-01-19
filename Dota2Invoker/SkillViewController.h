//
//  SkillViewController.h
//  Dota2Invoker
//
//  Created by Du Cong on 4/12/13.
//  Copyright (c) 2013 Du Cong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SkillViewController : UIViewController
@property int id;
@property (weak, nonatomic) IBOutlet UILabel *skillTitle;
@property (weak, nonatomic) IBOutlet UIImageView *skillImageView;
@property (weak, nonatomic) IBOutlet UILabel *mana;
@property (weak, nonatomic) IBOutlet UILabel *cd;
@property (weak, nonatomic) IBOutlet UITextView *skillDesc;

@end
