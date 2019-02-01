//
//  g9SeCell.m
//  Jiu
//
//  Created by wt on 2018/12/25.
//  Copyright © 2018年 deBug Sir. All rights reserved.
//

#import "g9SeCell.h"
#import <UIImageView+WebCache.h>

@implementation g9SeCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

-(void)g8Sx:(NSArray *)listA indexPath:(NSIndexPath *)indexPath
{
    NSLog(@"斤斤计较 = %@",listA);
    [self.g5ImageVc sd_setImageWithURL:[NSURL URLWithString:listA[indexPath.row]]];
}


+(CGFloat)g8Ss:(NSArray *)listA
{
    if (listA.count >0 && listA.count <= 3)
    {
        return 80.0f;
    }else if (listA.count > 3 && listA.count <= 6)
    {
        return 160.0f;
    }else if (listA.count > 6 && listA.count <= 9)
    {
        return 240.0f;
    }
    return 0.0f;
}



@end
