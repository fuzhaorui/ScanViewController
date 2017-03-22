//
//  InheritScanViewController.m
//  ScanViewController
//
//  Created by fuzhaurui on 2017/3/22.
//  Copyright © 2017年 fuzhaurui. All rights reserved.
//

#import "InheritScanViewController.h"


@interface InheritScanViewController ()
{
    UITextField *_textField;
}

@end

@implementation InheritScanViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.isInherit = YES;
    _textField = [[UITextField alloc]initWithFrame:CGRectMake(10, 80, self.view.frame.size.width-20, 30)];
    _textField.font = [UIFont systemFontOfSize:14.0f];
    _textField.textAlignment = NSTextAlignmentCenter;
    _textField.placeholder = @"扫描结果在这里";
    _textField.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:_textField];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"确定保存" style:UIBarButtonItemStylePlain target:self action:@selector(barButtonAction:)];
    
}

-(void)barButtonAction:(UIButton *)sender
{
    [self.delegate retrunSacnningInfo:_textField.text];
    [self.navigationController popViewControllerAnimated:YES];
}

-(void)readSacnningInfo:(NSString *)sacnningInfo
{
    _textField.text = sacnningInfo;
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [[[UIApplication sharedApplication]keyWindow]endEditing:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
    
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
