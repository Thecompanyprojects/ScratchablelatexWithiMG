//
//  g9GxCell.m
//  Jiu
//
//  Created by wt on 2018/12/25.
//  Copyright © 2018年 deBug Sir. All rights reserved.
//

#import "g9GxCell.h"
#import <UIImageView+WebCache.h>

@implementation g9GxCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

-(void)g5Cells:(NSArray *)listA
{
    if (listA.count >0 && listA.count <= 3)
    {
        if (listA.count ==3)
        {
            [self.g1S1 sd_setImageWithURL:[NSURL URLWithString:listA.firstObject]];
            [self.g1S2 sd_setImageWithURL:[NSURL URLWithString:listA[1]]];
            [self.g1S3 sd_setImageWithURL:[NSURL URLWithString:listA[2]]];
        }else if (listA.count>1 && listA.count<=2)
        {
            [self.g1S1 sd_setImageWithURL:[NSURL URLWithString:listA.firstObject]];
            [self.g1S2 sd_setImageWithURL:[NSURL URLWithString:listA[1]]];
        }else
        {
            [self.g1S1 sd_setImageWithURL:[NSURL URLWithString:listA.firstObject]];
        }
        self.g1V1.hidden = NO;
        self.g1V2.hidden = YES;
        self.g1V3.hidden = YES;
        self.g5Boms.constant = 170.0f;
        return;
    }else if (listA.count > 3 && listA.count <=6)
    {
        if (listA.count == 6)
        {
            [self.g1S1 sd_setImageWithURL:[NSURL URLWithString:listA.firstObject]];
            [self.g1S2 sd_setImageWithURL:[NSURL URLWithString:listA[1]]];
            [self.g1S3 sd_setImageWithURL:[NSURL URLWithString:listA[2]]];
            [self.g1S4 sd_setImageWithURL:[NSURL URLWithString:listA[3]]];
            [self.g1S5 sd_setImageWithURL:[NSURL URLWithString:listA[4]]];
            [self.g1S6 sd_setImageWithURL:[NSURL URLWithString:listA[5]]];
        }else if (listA.count <6 && listA.count>=5)
        {
            [self.g1S1 sd_setImageWithURL:[NSURL URLWithString:listA.firstObject]];
            [self.g1S2 sd_setImageWithURL:[NSURL URLWithString:listA[1]]];
            [self.g1S3 sd_setImageWithURL:[NSURL URLWithString:listA[2]]];
            [self.g1S4 sd_setImageWithURL:[NSURL URLWithString:listA[3]]];
            [self.g1S5 sd_setImageWithURL:[NSURL URLWithString:listA[4]]];
        }else
        {
            [self.g1S1 sd_setImageWithURL:[NSURL URLWithString:listA.firstObject]];
            [self.g1S2 sd_setImageWithURL:[NSURL URLWithString:listA[1]]];
            [self.g1S3 sd_setImageWithURL:[NSURL URLWithString:listA[2]]];
            [self.g1S4 sd_setImageWithURL:[NSURL URLWithString:listA[3]]];
        }
        self.g1V1.hidden = NO;
        self.g1V2.hidden = NO;
        self.g1V3.hidden = YES;
        self.g5Boms.constant = 86.0f;
        return;
    }else if (listA.count >6 && listA.count <=9)
    {
        if (listA.count == 9)
        {
            [self.g1S1 sd_setImageWithURL:[NSURL URLWithString:listA.firstObject]];
            [self.g1S2 sd_setImageWithURL:[NSURL URLWithString:listA[1]]];
            [self.g1S3 sd_setImageWithURL:[NSURL URLWithString:listA[2]]];
            [self.g1S4 sd_setImageWithURL:[NSURL URLWithString:listA[3]]];
            [self.g1S5 sd_setImageWithURL:[NSURL URLWithString:listA[4]]];
            [self.g1S6 sd_setImageWithURL:[NSURL URLWithString:listA[5]]];
            [self.g1S7 sd_setImageWithURL:[NSURL URLWithString:listA[6]]];
            [self.g1S8 sd_setImageWithURL:[NSURL URLWithString:listA[7]]];
            [self.g1S9 sd_setImageWithURL:[NSURL URLWithString:listA.lastObject]];
        }else if (listA.count <9 && listA.count>=8)
        {
            [self.g1S1 sd_setImageWithURL:[NSURL URLWithString:listA.firstObject]];
            [self.g1S2 sd_setImageWithURL:[NSURL URLWithString:listA[1]]];
            [self.g1S3 sd_setImageWithURL:[NSURL URLWithString:listA[2]]];
            [self.g1S4 sd_setImageWithURL:[NSURL URLWithString:listA[3]]];
            [self.g1S5 sd_setImageWithURL:[NSURL URLWithString:listA[4]]];
            [self.g1S6 sd_setImageWithURL:[NSURL URLWithString:listA[5]]];
            [self.g1S7 sd_setImageWithURL:[NSURL URLWithString:listA[6]]];
            [self.g1S8 sd_setImageWithURL:[NSURL URLWithString:listA[7]]];
        }else
        {
            [self.g1S1 sd_setImageWithURL:[NSURL URLWithString:listA.firstObject]];
            [self.g1S2 sd_setImageWithURL:[NSURL URLWithString:listA[1]]];
            [self.g1S3 sd_setImageWithURL:[NSURL URLWithString:listA[2]]];
            [self.g1S4 sd_setImageWithURL:[NSURL URLWithString:listA[3]]];
            [self.g1S5 sd_setImageWithURL:[NSURL URLWithString:listA[4]]];
            [self.g1S6 sd_setImageWithURL:[NSURL URLWithString:listA[5]]];
            [self.g1S7 sd_setImageWithURL:[NSURL URLWithString:listA[6]]];
        }
       
        self.g1V1.hidden = NO;
        self.g1V2.hidden = NO;
        self.g1V3.hidden = NO;
        self.g5Boms.constant = 0.0f;
        return;
    }
}

+(CGFloat)g5Hcs:(NSArray *)listA
{
    if (listA.count >0 && listA.count <= 3)
    {
        return 80.0f;
    }else if (listA.count > 3 && listA.count <=6 )
    {
        return 164.0f;
    }else if (listA.count >6 && listA.count <=9)
    {
        return 250.0f;
    }
    return 0.0f;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
