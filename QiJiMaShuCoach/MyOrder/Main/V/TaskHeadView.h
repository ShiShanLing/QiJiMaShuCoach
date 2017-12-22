//
//  TaskHeadView.h
//  cheZhiLianCoach
//
//  Created by 石山岭 on 2017/10/27.
//  Copyright © 2017年 石山岭. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol TaskHeadViewDelegate <NSObject>

/**
 *打电话
 */
- (void)handleMakePhoneCall:(NSString *)phone;
/**
 *发短信
 */
- (void)handleTexting:(NSString *)phone;
@end


@interface TaskHeadView : UIView

@property (nonatomic, strong)MyOrderModel *model;
/**
 *
 */
@property (nonatomic, weak) id<TaskHeadViewDelegate>delegate;
@end
