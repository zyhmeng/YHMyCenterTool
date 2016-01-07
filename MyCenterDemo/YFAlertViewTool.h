//
//  YFAlertViewTool.h
//  UIAlertControllerDemo
//
//  Created by zyh on 15/12/29.
//  Copyright © 2015年 zyh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface YFAlertViewTool : NSObject
/**
 *  sheet style
 *
 *  @param viewController need show viewControll
 *  @param title          title
 *  @param message        message
 *  @param cancelTitle    cancel title
 *  @param oneTitle       one title
 *  @param twoTitle       two title
 *  @param cancelAction   handler cancel button
 *  @param oneAction      handler one button
 *  @param twoAction      handler two button
 */
+ (void)showActionSheetStyleInViewController:(nonnull UIViewController *)viewController withTitle:(nullable NSString *)title message:(nullable NSString *)message cancelTitle:(nullable NSString *)cancelTitle otherOneTitle:(nullable NSString *)oneTitle twoTitle:(nullable NSString *)twoTitle cancelHandler:(void(^ __nullable)(UIAlertAction * _Nonnull action))cancelAction oneHandler:(void(^ __nullable)(UIAlertAction * _Nonnull action))oneAction twoHandler:(void(^ __nullable)(UIAlertAction * _Nonnull action))twoAction;
/**
 *  alertStyle
 *
 *  @param viewController need show viewController
 *  @param title          alert title
 *  @param message        alert message
 *  @param okTitle        ok titlt
 *  @param cancelTitle    cancel title
 *  @param okAction       handler ok button
 *  @param cancelAction   handler cancel button
 *
 */
+ (void)showActionAlertStyleInViewController:(nonnull UIViewController *)viewController title:(nullable NSString *)title message:(nullable NSString *)message okTitle:(nullable NSString *)okTitle cancelTitlt:(nullable NSString *)cancelTitle okBtnHandler:(void(^ __nullable)(UIAlertAction * _Nonnull action))okAction cancelBtnHandler:(void(^ __nullable)(UIAlertAction * _Nonnull action))cancelAction;

+ (void)addTFforAlertStyleWithTFcount:(int)tfCount OneTFplaceholder:(nullable NSString *)onePlaceholder twoTFplaceholder:(nullable NSString *)twoPlaceholder handlerOneTF:(void(^ __nullable)(UITextField *_Nonnull textField))oneTF handlerTwoTF:(void(^ __nullable)(UITextField *_Nonnull textField))twoTF;
@end
