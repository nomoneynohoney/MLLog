//  Created by Marc Liu on 2016/12/22.
//  Copyright © 2016年 6neko Studio. All rights reserved.

#import <UIKit/UIKit.h>

void EnableMLLog();
void MLLog(NSString* formatString, ...) NS_FORMAT_FUNCTION(1, 2);

@interface MLLogVC : UIViewController
@property (weak, nonatomic) IBOutlet UITextView *txt;
+(void)showLogWindow;
+(void)setLog:(NSString*)string;
@end
