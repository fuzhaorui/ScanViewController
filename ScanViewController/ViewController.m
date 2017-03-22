//
//  ViewController.m
//  ScanViewController
//
//  Created by fuzhaurui on 2017/3/22.
//  Copyright © 2017年 fuzhaurui. All rights reserved.
//

#import "ViewController.h"
#import "ScanViewController.h"
#import "InheritScanViewController.h"

@interface ViewController ()<ScanDelegate>
{
    UITextField *_textField;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor grayColor];
    
    _textField = [[UITextField alloc]initWithFrame:CGRectMake(10,100, self.view.frame.size.width-20, 30)];
    _textField.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:_textField];
    
    
    
    
    UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(10,150, self.view.frame.size.width-20, 30)];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button setTitle:@"底层扫描" forState:UIControlStateNormal];
    button.tag = 1000;
    [button addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    UIButton *button1 = [[UIButton alloc]initWithFrame:CGRectMake(10,200, self.view.frame.size.width-20, 30)];
    [button1 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button1 setTitle:@"继承扫描" forState:UIControlStateNormal];
    button1.tag = 1001;
    [button1 addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button1];
}

-(void)buttonAction:(UIButton *)sender
{
    if(sender.tag==1000)
    {
        ScanViewController *viewController = [[ScanViewController alloc]init];
        viewController.delegate = self;
        [self.navigationController pushViewController:viewController animated:YES];
    }
    else
    {
        InheritScanViewController *viewController = [[InheritScanViewController alloc]init];
        viewController.delegate = self;
        [self.navigationController pushViewController:viewController animated:YES];
    }
}


-(void)retrunSacnningInfo:(NSString *)tilte
{
    _textField.text = tilte;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
