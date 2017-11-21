/************************************************************
  *  * EaseMob CONFIDENTIAL 
  * __________________ 
  * Copyright (C) 2013-2014 EaseMob Technologies. All rights reserved. 
  *  
  * NOTICE: All information contained herein is, and remains 
  * the property of EaseMob Technologies.
  * Dissemination of this information or reproduction of this material 
  * is strictly forbidden unless prior written permission is obtained
  * from EaseMob Technologies.
  */

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
@interface BaseViewController : UIViewController
@property (strong, nonatomic)AppDelegate *AppDelegate;
@property (nonatomic, strong)NSManagedObjectContext *managedContext;
- (IBAction)backClick:(id)sender;
- (void)indeterminateExample;
- (void)delayMethod;
//刷新用户数据
- (void)refreshUserData;
@end
