//
//  YFAlertViewTool.m
//  UIAlertControllerDemo
//
//  Created by zyh on 15/12/29.
//  Copyright © 2015年 zyh. All rights reserved.
//

#import "YFAlertViewTool.h"

@interface YFAlertViewTool ()

@property (nonatomic) int ftCount;
@end

@implementation YFAlertViewTool
+ (void)showActionSheetStyleInViewController:(nonnull UIViewController *)viewController withTitle:(nullable NSString *)title message:(nullable NSString *)message cancelTitle:(nullable NSString *)cancelTitle otherOneTitle:(nullable NSString *)oneTitle twoTitle:(nullable NSString *)twoTitle cancelHandler:(void(^ __nullable)(UIAlertAction * _Nonnull action))cancelAction oneHandler:(void(^ __nullable)(UIAlertAction * _Nonnull action))oneAction twoHandler:(void(^ __nullable)(UIAlertAction * _Nonnull action))twoAction
{
    UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleActionSheet];
    
    __weak UIAlertController *controller = alertVC;
    
    if (cancelTitle) {
        UIAlertAction *cancel = [UIAlertAction actionWithTitle:cancelTitle style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
            cancelAction(action);
        }];
        [controller addAction:cancel];
    }
    if (oneTitle) {
        UIAlertAction *one = [UIAlertAction actionWithTitle:oneTitle style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            oneAction(action);
        }];
        [controller addAction:one];
    }
    if (twoTitle) {
        UIAlertAction *two = [UIAlertAction actionWithTitle:twoTitle style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            twoAction(action);
        }];
        [controller addAction:two];
    }
    [viewController presentViewController:controller animated:YES completion:nil];
    
}

+ (void)showActionAlertStyleInViewController:(nonnull UIViewController *)viewController title:(nullable NSString *)title message:(nullable NSString *)message okTitle:(nullable NSString *)okTitle cancelTitlt:(nullable NSString *)cancelTitle okBtnHandler:(void(^ __nullable)(UIAlertAction * __nullable action))okAction cancelBtnHandler:(void(^ __nullable)(UIAlertAction * __nullable action))cancelAction
{
    UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    
    __weak UIAlertController *controller = alertVC;
    
    if (okTitle) {
        UIAlertAction *ok = [UIAlertAction actionWithTitle:okTitle style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            okAction(action);
            
        }];
        [controller addAction:ok];
    }
    if (cancelTitle) {
        UIAlertAction *cancel = [UIAlertAction actionWithTitle:cancelTitle style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
            
            cancelAction(action);
            
        }];
        [controller addAction:cancel];
    }
    
    
    [viewController presentViewController:controller animated:YES completion:nil];
}


@end
