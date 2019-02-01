//
//  g9GxCell.h
//  Jiu
//
//  Created by wt on 2018/12/25.
//  Copyright © 2018年 deBug Sir. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface g9GxCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *g1S1;
@property (weak, nonatomic) IBOutlet UIImageView *g1S2;
@property (weak, nonatomic) IBOutlet UIImageView *g1S3;
@property (weak, nonatomic) IBOutlet UIImageView *g1S4;
@property (weak, nonatomic) IBOutlet UIImageView *g1S5;
@property (weak, nonatomic) IBOutlet UIImageView *g1S6;
@property (weak, nonatomic) IBOutlet UIImageView *g1S7;
@property (weak, nonatomic) IBOutlet UIImageView *g1S8;
@property (weak, nonatomic) IBOutlet UIImageView *g1S9;

@property (weak, nonatomic) IBOutlet UIView *g1V1;
@property (weak, nonatomic) IBOutlet UIView *g1V2;
@property (weak, nonatomic) IBOutlet UIView *g1V3;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *g5Boms;




-(void)g5Cells:(NSArray *)listA;

+(CGFloat)g5Hcs:(NSArray *)listA;





@end

NS_ASSUME_NONNULL_END
