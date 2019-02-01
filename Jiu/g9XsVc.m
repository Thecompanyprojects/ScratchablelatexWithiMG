//
//  g9XsVc.m
//  Jiu
//
//  Created by wt on 2018/12/25.
//  Copyright © 2018年 deBug Sir. All rights reserved.
//

#import "g9XsVc.h"
#import "g9SxCell.h"

static NSString * const ID = @"g9SxCell";
@interface g9XsVc ()<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *g9TableVc;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *g9Boms;
@property (retain,nonatomic)NSArray * TuArr;

@end

@implementation g9XsVc

- (void)viewDidLoad
{
    [super viewDidLoad];
    if ([UIScreen mainScreen].bounds.size.height >= 812.0f)
    {
        self.g9Boms.constant = -34.0f;
    }
    self.g9TableVc.delegate = self;
    self.g9TableVc.dataSource = self;
    self.g9TableVc.estimatedSectionFooterHeight = 0.0f;
    self.g9TableVc.estimatedSectionHeaderHeight = 0.0f;
    self.TuArr = @[@"http://img03.tooopen.com/uploadfile/downs/images/20110714/sy_20110714135215645030.jpg",
                   @"http://pic1.nipic.com/2008-12-30/200812308231244_2.jpg",
                   @"http://pic2.ooopic.com/12/40/58/18bOOOPIC9c.jpg",
                   @"http://img.bimg.126.net/photo/ZZ5EGyuUCp9hBPk6_s4Ehg==/5727171351132208489.jpg",
                   @"http://img.bimg.126.net/photo/V6nNeq8YN2xPBRxTz8w4VA==/5776429472056759812.jpg",
                   @"http://wx3.sinaimg.cn/large/006nLajtly1fpi9ikmj1kj30dw0dwwfq.jpg",
                   @"http://wx2.sinaimg.cn/large/006nLajtly1fld4grlp5dj30dw0dwtbb.jpg",
                   @"http://wx4.sinaimg.cn/large/006nLajtly1fjx1w2g6mej30dw0dwta5.jpg"];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1.0f;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    g9SxCell * cell = [tableView dequeueReusableCellWithIdentifier:ID forIndexPath:indexPath];
    [cell g5CellS:self.TuArr];
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return [g9SxCell g8Ssx:self.TuArr];
}





/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
