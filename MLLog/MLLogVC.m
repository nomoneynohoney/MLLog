//
//  MLLogVC.m
//  fdksj
//
//  Created by Marc Liu on 2016/12/22.
//  Copyright © 2016年 com.creatidea. All rights reserved.
//

#import "MLLogVC.h"

void EnableMLLog() {
    [MLLogVC showLogWindow];
}

void MLLog(NSString* formatString, ...) {
    va_list ap;
    va_start(ap, formatString);
    NSString *str = [[NSString alloc] initWithFormat:formatString arguments:ap];
    va_end(ap);
    [MLLogVC setLog:str];
}

@implementation MLLogVC
static NSMutableString *mllog = nil;
static UIWindow *logWindow = nil;


+(void)setLog:(NSString*)string{
    if (logWindow) {
        [mllog appendString:[NSString stringWithFormat:@"%@\n", string]];
        MLLogVC *vc = (MLLogVC*)logWindow.rootViewController;
        dispatch_async(dispatch_get_main_queue(), ^{
            vc.txt.text = mllog;
            if(vc.txt.text.length > 0 ) {
                NSRange bottom = NSMakeRange(vc.txt.text.length -1, 1);
                [vc.txt scrollRangeToVisible:bottom];
            }
        });
    }
    NSLog(@"%@", string);
}

+(void)showLogWindow{
    if (!logWindow) {
        CGSize s = [UIScreen mainScreen].bounds.size;
        CGFloat w = [UIScreen mainScreen].bounds.size.width*2.0/3.0;
        CGFloat h = 200.0;
        
        static dispatch_once_t onceToken;
        dispatch_once(&onceToken, ^{
            mllog = [NSMutableString new];

            logWindow = [[UIWindow alloc] initWithFrame:CGRectMake((s.width-w)/2.0, s.height-h-80.0, w, h)];
            logWindow.clipsToBounds = YES;
            logWindow.windowLevel = UIWindowLevelAlert + 1000;
            
            MLLogVC *vc = [[UIStoryboard storyboardWithName:@"MLLog" bundle:nil] instantiateViewControllerWithIdentifier:@"MLLogVC"];
            logWindow.rootViewController = vc;
            [logWindow makeKeyAndVisible];
        });
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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
- (IBAction)handleDrag:(UIPanGestureRecognizer*)pan {
    CGPoint p = [pan translationInView:pan.view];
    CGPoint q = logWindow.center;
    q = CGPointMake(q.x+p.x, q.y+p.y);
    logWindow.center = q;
    [pan setTranslation:CGPointZero inView:pan.view];
}
- (IBAction)handleZoom:(UIPanGestureRecognizer *)pan {
    CGPoint p = [pan translationInView:pan.view];
    CGRect f = logWindow.frame;
    f = CGRectMake(f.origin.x, f.origin.y, MAX(f.size.width+p.x, 68.0), MAX(f.size.height+p.y, 50.0));
    logWindow.frame = f;
    [pan setTranslation:CGPointZero inView:pan.view];
}

@end
