//
//  ViewController.m
//  CALayer
//
//  Created by wanghuaiyou on 2016/10/17.
//  Copyright © 2016年 wanghuaiyou. All rights reserved.
//

#import "ViewController.h"
#import "TableViewController.h"

@interface ViewController ()

@property (nonatomic, strong) UIView *readView;

@property (nonatomic, strong) UIImageView *imageView;

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor whiteColor];
    
    
//    [self setExtendedLayoutIncludesOpaqueBars:NO];
//    self.automaticallyAdjustsScrollViewInsets = NO;
//    self.extendedLayoutIncludesOpaqueBars
    self.edgesForExtendedLayout = UIRectEdgeNone;
    
    
    self.readView = [[UIView alloc] initWithFrame:CGRectMake(100, 0, 100, 100)];
    self.readView.backgroundColor = [UIColor redColor];
    [self.view addSubview:self.readView];
    
    
    self.readView.layer.cornerRadius = 50;
    self.readView.layer.borderWidth = 1;
    self.readView.layer.borderColor = [UIColor whiteColor].CGColor;
    self.readView.layer.shadowColor = [UIColor yellowColor].CGColor;
    self.readView.layer.shadowRadius = 10;
    self.readView.layer.shadowOpacity = 1;
    
    
    self.imageView = [[UIImageView alloc] initWithFrame:CGRectMake(100, 230, 100, 100)];
    self.imageView.backgroundColor = [UIColor grayColor];
    [self.view addSubview:self.imageView];
    
    
    
    self.imageView.clipsToBounds = YES;
    
    CALayer *layer = [CALayer layer];
    layer.frame = CGRectMake(100, 300, 30, 30);
    layer.backgroundColor = [UIColor blueColor].CGColor;
    layer.contents = (__bridge id _Nullable)([UIImage imageNamed:@"ali.png"].CGImage);
    [self.view.layer addSublayer:layer];
    
    
    self.imageView.layer.position = CGPointMake(55, 55);
//    self.imageView.layer.anchorPoint = CGPointMake(0.5, 0.5);
    
    
    
//    self.view.layer.contents = (__bridge id _Nullable)([UIImage imageNamed:@"ali.png"].CGImage);
    
    
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    // 宽高伸缩比例
    self.imageView.transform = CGAffineTransformMakeScale(2, 1);
    
        // xy移动距离
        self.imageView.transform = CGAffineTransformMakeTranslation(4, 6);
    
        // 旋转
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:2];
        self.imageView.transform = CGAffineTransformMakeRotation(360);
    [UIView commitAnimations];
        // //自定义形变,参数自拟
//        self.imageView.transform = CGAffineTransformMake(1, 1, 1, 1, 1, 1);
    
    
    // 恢复到形变前
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        
        self.imageView.transform = CGAffineTransformIdentity;
    });
    
    
    
    
    TableViewController *vc = [TableViewController new];
    
    // 过度样式
    /*
     UIModalTransitionStyleCoverVertical ：从底部往上钻（默认）
     UIModalTransitionStyleFlipHorizontal ：三维翻转
     UIModalTransitionStyleCrossDissolve ：淡入淡出
     UIModalTransitionStylePartialCurl ：翻页（只显示部分，使用前提：呈现样式必须是UIModalPresentationFullScreen）
     */
    vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    
    // 显示样式
    /*
     （1）UIModalPresentationFullScreen ：全屏显示（默认）
     （2）UIModalPresentationPageSheet　　宽度：竖屏时的宽度（768）  高度：当前屏幕的高度（填充整个高度）
     （3）UIModalPresentationFormSheet ：占据屏幕中间的一小块（比较常用）
     （4）UIModalPresentationCurrentContext ：跟随父控制器的呈现样式
     */
    vc.modalPresentationStyle = UIModalPresentationFormSheet;
    
    
    
//    [self presentViewController:vc animated:YES completion:nil];
    
    [self.navigationController pushViewController:vc animated:YES];
    

}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    
}

- (void)dealloc {
    
}


















@end
