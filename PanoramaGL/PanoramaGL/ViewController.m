//
//  ViewController.m
//  PanoramaGL
//
//  Created by Andy on 2017/4/7.
//  Copyright © 2017年 Andy. All rights reserved.
//

#import "ViewController.h"
#import "PLView.h"
#import "PLJSONLoader.h"
#import <CoreMotion/CoreMotion.h>


#define kIdMin 1
#define kIdMax 1000

@interface ViewController ()<PLViewDelegate>

@property (nonatomic , strong)PLView *plView;

@property (nonatomic , strong)CMMotionManager *manager;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _plView = [[PLView alloc] initWithFrame:self.view.frame];
//    _plView.backgroundColor = [UIColor cyanColor];
    _plView.delegate = self;
    _plView.isAccelerometerEnabled = YES;//启动加速
    _plView.isScrollingEnabled = YES;//手指滑动
//    _plView.isInertiaEnabled = YES;//惯性
    
    [_plView load:[PLJSONLoader loaderWithPath:[[NSBundle mainBundle] pathForResource:@"json_cubic" ofType:@"data"]]];

    
    [self.view addSubview:_plView];
    
    
    
//    [self ay_selectPanorama:0];
    
}

- (void)ay_selectPanorama:(NSInteger)index{
   
//    PLCubicPanorama *cubicPanorama = [PLCubicPanorama panorama];
//    [cubicPanorama setTexture:[PLTexture textureWithImage:[PLImage imageWithPath:[[NSBundle mainBundle] pathForResource:@"pano_f" ofType:@"jpg"]]] face:PLCubeFaceOrientationFront];
//    [cubicPanorama setTexture:[PLTexture textureWithImage:[PLImage imageWithPath:[[NSBundle mainBundle] pathForResource:@"pano_b" ofType:@"jpg"]]] face:PLCubeFaceOrientationBack];
//    [cubicPanorama setTexture:[PLTexture textureWithImage:[PLImage imageWithPath:[[NSBundle mainBundle] pathForResource:@"pano_l" ofType:@"jpg"]]] face:PLCubeFaceOrientationLeft];
//    [cubicPanorama setTexture:[PLTexture textureWithImage:[PLImage imageWithPath:[[NSBundle mainBundle] pathForResource:@"pano_r" ofType:@"jpg"]]] face:PLCubeFaceOrientationRight];
//    [cubicPanorama setTexture:[PLTexture textureWithImage:[PLImage imageWithPath:[[NSBundle mainBundle] pathForResource:@"pano_u" ofType:@"jpg"]]] face:PLCubeFaceOrientationUp];
//    [cubicPanorama setTexture:[PLTexture textureWithImage:[PLImage imageWithPath:[[NSBundle mainBundle] pathForResource:@"pano_d" ofType:@"jpg"]]] face:PLCubeFaceOrientationDown];
  
    
//    PLSpherical2Panorama *panorama = [PLSpherical2Panorama panorama];
//    [panorama setImage:[PLImage imageWithPath:[[NSBundle mainBundle] pathForResource:@"pano_sphere" ofType:@"jpg"]]];
    PLSphericalPanorama *panorama = [PLSphericalPanorama panorama];
    [panorama setTexture:[PLTexture textureWithImage:[PLImage imageWithPath:[[NSBundle mainBundle] pathForResource:@"pano_sphere" ofType:@"jpg"]]]];
    
    
    [_plView setPanorama:panorama];

}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
