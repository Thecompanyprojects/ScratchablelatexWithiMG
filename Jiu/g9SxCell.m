//
//  g9SxCell.m
//  Jiu
//
//  Created by wt on 2018/12/25.
//  Copyright © 2018年 deBug Sir. All rights reserved.
//

#import "g9SxCell.h"
#import "g9SeCell.h"

static NSString * const ID = @"g9SeCell";
@implementation g9SxCell

- (void)awakeFromNib
{
    [super awakeFromNib];
    self.g9CollVc.delegate = self;
    self.g9CollVc.dataSource = self;
    self.g9CollVc.bounces = YES;
    self.g9CollVc.backgroundColor = [UIColor whiteColor];
    [self.g9CollVc registerNib:[UINib nibWithNibName:NSStringFromClass([g9SeCell class]) bundle:nil] forCellWithReuseIdentifier:ID];
}

-(void)g5CellS:(NSArray *)listA
{
    if (listA.count >0 && listA.count <= 3)
    {
        self.g9HeCons.constant = 80.0f;
    }else if (listA.count > 3 && listA.count <= 6)
    {
        self.g9HeCons.constant = 160.0f;
    }else if (listA.count > 6 && listA.count <= 9)
    {
        self.g9HeCons.constant = 240.0f;
    }else
    {
        self.g9HeCons.constant = 0.0f;
    }
    self.TuArr = listA;
    [self.g9CollVc reloadData];
}

+(CGFloat)g8Ssx:(NSArray *)listA
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

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1.0f;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return self.TuArr.count;
}

- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    g9SeCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:ID forIndexPath:indexPath];
    [cell g8Sx:self.TuArr indexPath:indexPath];
    return cell;
}

- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section
{
    return UIEdgeInsetsZero;
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section
{
    return 0.0f;
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section
{
    return 0.0f;
}

-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout referenceSizeForHeaderInSection:(NSInteger)section
{
    return CGSizeZero;
}

-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return CGSizeMake([UIScreen mainScreen].bounds.size.width / 3, 80);
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout referenceSizeForFooterInSection:(NSInteger)section
{
    return CGSizeZero;
}




- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
