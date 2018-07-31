#import "ViewController.h"
#import "HXButtonIconTitle.h"
#define kScreenHeight [[UIScreen mainScreen] bounds].size.height      
#define kScreenWidth [[UIScreen mainScreen] bounds].size.width      
@interface ViewController ()
@end
@implementation ViewController
- (void)viewDidLoad
{
    [super viewDidLoad];
    for (int i = 0; i< 6; i++)
    {
        HXButtonIconTitle *button1 = [HXButtonIconTitle buttonWithType:UIButtonTypeCustom];
        button1.frame = CGRectMake(60, 50+i*70, 120, 60);
        button1.backgroundColor = [UIColor yellowColor];
        button1.tag = i;
        [button1 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [button1 setTitleColor:[UIColor colorWithWhite:0.549 alpha:1.000] forState:UIControlStateHighlighted];
        [button1 addTarget:self action:@selector(testAction:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:button1];
        [button1 buttonIconTitleWithTitle:@"你好你好" font:[UIFont systemFontOfSize:12] icon:[UIImage imageNamed:@"dropdown_loading_03.jpg"] iconSize:CGSizeMake(30,30) alignment:i space:0 scaleImageIfSmaller:NO];
    }
}
- (void)testAction:(UIButton *)sender
{
    NSLog(@"testAction:%ld", (long)sender.tag);
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
@end
