//
//  ViewController.m
//  01 Hello IOS
//
//  Created by mac on 15/7/15.
//  Copyright (c) 2015年 chenhao. All rights reserved.
//
//-------------图标的设置----------
//1。 文件名 icon.png
//2 images。xcassets 文件夹中设置不同版本不同分辨率的图标

//----------启动画面的设置---------------
//1. launchscreen.xib
//2default.png 需要再设置中 修改启动文件
//3 在iphone5 320*568 的分辨率下 需要一张后缀名为－568h的图片／／如果没有－568h的图片，系统会认为此程序不是适配iPhone5的，所以屏幕上下会有黑边







#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *number1;
@property (weak, nonatomic) IBOutlet UITextField *number2;
@property (weak, nonatomic) IBOutlet UILabel *sum;
@property (weak, nonatomic) IBOutlet UITextField *numberReduce1;
@property (weak, nonatomic) IBOutlet UITextField *numberReduce2;
@property (weak, nonatomic) IBOutlet UILabel *difference;
@property (weak, nonatomic) IBOutlet UITextField *numChu1;
@property (weak, nonatomic) IBOutlet UITextField *numChu2;
@property (weak, nonatomic) IBOutlet UILabel *quotient;
@property (weak, nonatomic) IBOutlet UITextField *numCheng1;
@property (weak, nonatomic) IBOutlet UITextField *numCheng2;
@property (weak, nonatomic) IBOutlet UILabel *product;
@end

@implementation ViewController
- (IBAction)sender:(UIButton *)sender {
   //计算加法
    //1.获取number1
    //获取输入框中的字符串
    NSString *numberString1=_number1.text;
    //将字符串转换为数字
    CGFloat number1=[numberString1 floatValue];
    //2.获取number2
    NSString *numberString2=_number2.text;
    CGFloat number2=[numberString2 floatValue];
    //两数相加
    CGFloat sum=number1+number2;
    //4.显示结果
    //将计算结果转换字符串
    NSString *sumString=[NSString stringWithFormat:@"%.3f",sum];
    //将字符串显示到UILabel上
    _sum.text=sumString;
}
- (IBAction)calculaterReduce:(UIButton *)sender {
    NSString *numString1=_numberReduce1.text;
    CGFloat num1=[numString1 floatValue];
    NSString *numString2=_numberReduce2.text;
    CGFloat num2=[numString2 floatValue];
    CGFloat reduce=num1-num2;
    NSString *reduceString=[NSString stringWithFormat:@"%.2f",reduce];
    _difference.text=reduceString;
    
}
- (IBAction)calculateqQuotient:(UIButton *)sender {
    NSString *numString1=_numChu1.text;
    CGFloat num1=[numString1 floatValue];
    NSString *numString2=_numChu2.text;
    CGFloat num2=[numString2 floatValue];
    CGFloat quotient=num1/num2;
    NSString *quotientString=[NSString stringWithFormat:@"%.2f",quotient];
    _quotient.text=quotientString;

}
- (IBAction)calculateProduct:(UIButton *)sender {
    NSString *numString1=_numCheng1.text;
    CGFloat num1=[numString1 floatValue];
    NSString *numString2=_numCheng2.text;
    CGFloat num2=[numString2 floatValue];
    CGFloat product=num1*num2;
    NSString *productString=[NSString stringWithFormat:@"%.2f",product];
    _product.text=productString;

}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
