//
//  ScanViewController
//  sender
//
//  Created by IOS-开发机 on 15/12/23.
//  Copyright © 2015年 IOS-开发机. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ScanDelegate <NSObject>
- (void)retrunSacnningInfo:(NSString *)tilte;
@end

@interface ScanViewController : UIViewController
@property (strong, nonatomic)id<ScanDelegate>delegate;

///MARK: - 读取二维码数据  是否直接用代理直接返回数据  NO:直接返回读取数据  YES:不直接代理返回，使用readSacnningInfo检查读取的数据
@property (assign, nonatomic)BOOL isInherit;
///MARK: - 验证读取的信息
-(void)readSacnningInfo:(NSString *)sacnningInfo;
@end
// 版权属于原作者
// http://code4app.com (cn) http://code4app.net (en)
// 发布代码于最专业的源码分享网站: Code4App.com
