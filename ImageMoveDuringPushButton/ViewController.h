//
//  ViewController.h
//  ImageMoveDuringPushButton
//
//  Created by 達郎 植田 on 12/08/04.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    NSTimer *_nt;
    UIImageView *_imageView;
}

- (IBAction)pushToMove:(id)sender;
- (void)goRight;
- (IBAction)stop;
@end
