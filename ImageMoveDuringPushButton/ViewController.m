//
//  ViewController.m
//  ImageMoveDuringPushButton
//
//  Created by 達郎 植田 on 12/08/04.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    _imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"icon.png"]];
    [self.view addSubview:_imageView];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)pushToMove:(id)sender {
    [self performSelector:@selector(move) withObject:nil afterDelay:3.0];
}

- (void)move
{
    _nt = [NSTimer scheduledTimerWithTimeInterval:0.1
                                                   target:self
                                                 selector:@selector(goRight)
                                                 userInfo:nil
                                                  repeats:YES];
}

- (void)goRight
{
    _imageView.frame = CGRectMake(_imageView.frame.origin.x + 10, _imageView.frame.origin.y,
                                  _imageView.frame.size.width, _imageView.frame.size.height);
}

- (IBAction)stop
{
    [NSObject cancelPreviousPerformRequestsWithTarget:self selector:@selector(move) object:nil];
    [_nt invalidate];
}
@end
