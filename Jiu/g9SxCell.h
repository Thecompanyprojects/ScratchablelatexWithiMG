//
//  g9SxCell.h
//  Jiu
//
//  Created by wt on 2018/12/25.
//  Copyright © 2018年 deBug Sir. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface g9SxCell : UITableViewCell<UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout>
@property (weak, nonatomic) IBOutlet UIView *g9BgC;
@property (weak, nonatomic) IBOutlet UICollectionView *g9CollVc;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *g9HeCons;
@property (retain,nonatomic)NSArray * TuArr;

-(void)g5CellS:(NSArray *)listA;

+(CGFloat)g8Ssx:(NSArray *)listA;

@end








NS_ASSUME_NONNULL_END
