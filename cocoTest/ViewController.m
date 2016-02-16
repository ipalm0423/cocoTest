//
//  ViewController.m
//  cocoTest
//
//  Created by 陳冠宇 on 2016/2/16.
//  Copyright © 2016年 陳冠宇. All rights reserved.
//

#import "ViewController.h"
#import "cocos2d.h"



@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    CCScene *introScene = [CCScene node];
    
    
    CCDirector *ccDirector = [CCDirector sharedDirector];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setupCocos2D {
    eaglview
    EAGLView *glView = [EAGLView viewWithFrame:self.view.bounds
                                   pixelFormat:kEAGLColorFormatRGB565	// kEAGLColorFormatRGBA8
                                   depthFormat:0                        // GL_DEPTH_COMPONENT16_OES
                        ];
    glView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    [self.view insertSubview:glView atIndex:0];
    [[CCDirector sharedDirector] setOpenGLView:glView];
    CCScene *scene = [HelloWorldLayer sceneWithCalendar:1 rootViewController:self];
    [[CCDirector sharedDirector] runWithScene:scene];
}

@end
