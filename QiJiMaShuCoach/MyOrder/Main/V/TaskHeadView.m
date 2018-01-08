//
//  TaskHeadView.m
//  cheZhiLianCoach
//
//  Created by 石山岭 on 2017/10/27.
//  Copyright © 2017年 石山岭. All rights reserved.
//

#import "TaskHeadView.h"

@interface TaskHeadView ()
@property (weak, nonatomic) IBOutlet UILabel *orderTotalPriceLabel;
/**
 背景
 */
@property (weak, nonatomic) IBOutlet UIImageView *backgroundImageView;
/**
 用户头像
 */
@property (weak, nonatomic) IBOutlet UIImageView *userHeadImage;
/**
 用户名字
 */
@property (weak, nonatomic) IBOutlet UILabel *usetNameLabel;
/**
 时间
 */
@property (weak, nonatomic) IBOutlet UILabel *dateLabel;
/**
 学员名字
 */
@property (weak, nonatomic) IBOutlet UILabel *studentNameLabel;
/**
 学员电话
 */
@property (weak, nonatomic) IBOutlet UILabel *studentPhoneLabel;
/**
 学员证号
 */
@property (weak, nonatomic) IBOutlet UILabel *studentCardNumLabel;


@end
//首先 需要手动切割一下 背景色的圆角 然后需要调整 上间距
@implementation TaskHeadView

- (void)layoutSubviews {
    self.backgroundColor = MColor(239, 239, 244);
    
}
//打短信
- (IBAction)handleTexting:(DSButton *)sender {
    if ([_delegate respondsToSelector:@selector(handleTexting:)]) {
        [_delegate handleTexting:self.model.studentPhone];
    }
}
//打电话
- (IBAction)handleMakePhone:(DSButton *)sender {
    if ([_delegate respondsToSelector:@selector(handleMakePhoneCall:)]) {
        [_delegate handleMakePhoneCall:self.model.studentPhone];
    }
    
}
- (void)setModel:(MyOrderModel *)model {
    self.usetNameLabel.text = @"订单状态:";
    self.dateLabel.text = [CommonUtil getStringForDate:model.orderDate format:@"yyyy-MM-dd"];
    
    self.studentNameLabel.text = [NSString stringWithFormat:@"学员名字:%@",model.studentName];
    self.studentPhoneLabel.text =[NSString stringWithFormat:@"学员电话:%@",model.studentPhone];
    
    self.studentCardNumLabel.text = @"学员证号 : 123456789";
    self.orderTotalPriceLabel.text = [NSString stringWithFormat:@"订单总价 : %d",model.orderAmount];
    
}

@end
