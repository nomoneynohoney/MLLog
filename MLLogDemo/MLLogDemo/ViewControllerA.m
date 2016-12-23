//
//  ViewController.m
//  MLLogDemo
//
//  Created by Marc Liu on 2016/12/22.
//  Copyright © 2016年 com.creatidea. All rights reserved.
//

#import "ViewControllerA.h"
#import "MLLog.h"

@interface ViewControllerA ()

@end

@implementation ViewControllerA

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    MLLog(@"View Controller A Appeared.");
}
- (IBAction)promptAlert:(UIButton *)sender {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Warning!" message:@"Please select you gender." preferredStyle:UIAlertControllerStyleAlert];
    [alert addAction:[UIAlertAction actionWithTitle:@"Boy" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        MLLog(@"User is a %@.", action.title);
    }]];
    [alert addAction:[UIAlertAction actionWithTitle:@"Girl" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        MLLog(@"User is a %@.", action.title);
    }]];
    [alert addAction:[UIAlertAction actionWithTitle:@"I can't say" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        MLLog(@"User cannot decide his gender right now.");
    }]];
    [self presentViewController:alert animated:YES completion:nil];
}

@end
