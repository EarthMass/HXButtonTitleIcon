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
    
    UIScrollView * scr = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:scr];
    
    for (int i = 0; i< 10; i++)
    {
        HXButtonIconTitle *button1 = [HXButtonIconTitle buttonWithType:UIButtonTypeCustom];
        button1.frame = CGRectMake(60, 50+i*70, 200, 60);
        button1.backgroundColor = [UIColor yellowColor];
        button1.tag = i;
        [button1 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [button1 setTitleColor:[UIColor colorWithWhite:0.549 alpha:1.000] forState:UIControlStateHighlighted];
        [button1 addTarget:self action:@selector(testAction:) forControlEvents:UIControlEventTouchUpInside];
        [scr addSubview:button1];
        [button1 buttonIconTitleWithTitle:@"你好你好" font:[UIFont systemFontOfSize:12] icon:[UIImage imageNamed:@"dropdown_loading_03.jpg"] iconSize:CGSizeMake(30,30) alignment:i space:20 scaleImageIfSmaller:NO];
        [scr setContentSize:CGSizeMake(0, button1.frame.size.height + button1.frame.origin.y + 50)];
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
