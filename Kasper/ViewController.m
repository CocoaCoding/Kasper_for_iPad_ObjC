//
//  ViewController.m
//  Kasper
//
//  Created by Holger Hinzberg on 03.09.14.
//  Copyright (c) 2014 Holger Hinzberg. All rights reserved.
//

#import "ViewController.h"
#import "KasperScene.h"
#import "SkeletonPoseDefinition.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet SKView *skView;
@property (strong, nonatomic) IBOutlet KasperScene *scene;
@property (strong, nonatomic) IBOutlet UISlider *shoulderSlider;
@property (strong, nonatomic) IBOutlet UISlider *eyesSlider;
@property (strong, nonatomic) IBOutlet UISlider *leftUpperArmSlider;
@property (strong, nonatomic) IBOutlet UISlider *leftLowerArmSlider;
@property (strong, nonatomic) IBOutlet UISlider *leftUpperLegSlider;
@property (strong, nonatomic) IBOutlet UISlider *leftLowerLegSlider;
@property (strong, nonatomic) IBOutlet UISlider *rightUpperArmSlider;
@property (strong, nonatomic) IBOutlet UISlider *rightLowerArmSlider;
@property (strong, nonatomic) IBOutlet UISlider *rightUpperLegSlider;
@property (strong, nonatomic) IBOutlet UISlider *rightLowerLegSlider;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
   
    self.skView.showsFPS = NO;
    self.skView.showsNodeCount = NO;
    
    self.scene = [KasperScene sceneWithSize:self.skView.bounds.size];
    self.scene.scaleMode = SKSceneScaleModeAspectFill;
    [self.skView presentScene:self.scene];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (BOOL)prefersStatusBarHidden
{
    return YES;
}

- (BOOL)shouldAutorotate
{
    return NO;
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskLandscape;
}

- (IBAction)setPoseDefinition:(id)sender
{
    SkeletonPoseDefinition *pose = [self getPoseFromView];
    [self.scene setPoseDefinition:pose];
}

- (SkeletonPoseDefinition *)getPoseFromView
{
    SkeletonPoseDefinition *pose = [[SkeletonPoseDefinition alloc]init];
    pose.eyesMovement = self.eyesSlider.value;
    pose.shoulderRotation = self.shoulderSlider.value - 180;
    pose.leftUpperArmRotation = self.leftUpperArmSlider.value - 180;
    pose.leftLowerArmRotation = self.leftLowerArmSlider.value - 180;
    pose.leftUpperLegRotation = self.leftUpperLegSlider.value - 180;
    pose.leftLowerLegRotation = self.leftLowerLegSlider.value - 180;
    pose.rightUpperArmRotation = self.rightUpperArmSlider.value - 180;
    pose.rightLowerArmRotation = self.rightLowerArmSlider.value - 180;
    pose.rightUpperLegRotation = self.rightUpperLegSlider.value - 180;
    pose.rightLowerLegRotation = self.rightLowerLegSlider.value - 180;
    return pose;
}

- (IBAction)default1ButtonPressed:(id)sender
{
    self.eyesSlider.value = 0;
    self.shoulderSlider.value = 180;
    self.leftUpperArmSlider.value = 180;
    self.leftLowerArmSlider.value = 180;
    self.leftUpperLegSlider.value =180;
    self.leftLowerLegSlider.value = 180;
    self.rightUpperArmSlider.value = 180;
    self.rightLowerArmSlider.value = 180;
    self.rightUpperLegSlider.value = 180;
     self.rightLowerLegSlider.value = 180;
    SkeletonPoseDefinition *pose = [self getPoseFromView];
    [self.scene setPoseDefinition:pose];
}

- (IBAction)default2ButtonPressed:(id)sender
{
    self.eyesSlider.value = -8;
    self.shoulderSlider.value = 170;
    
    self.rightUpperArmSlider.value = 210;
    self.rightLowerArmSlider.value = 150;
    
    self.leftUpperArmSlider.value = 180;
    self.leftLowerArmSlider.value = 150;
    
    self.leftUpperLegSlider.value = 170;
    self.leftLowerLegSlider.value = 190;
    
    self.rightUpperLegSlider.value = 190;
    self.rightLowerLegSlider.value = 170;
    
    SkeletonPoseDefinition *pose = [self getPoseFromView];
    [self.scene setPoseDefinition:pose];
}

- (IBAction)default3ButtonPressed:(id)sender
{
    self.eyesSlider.value = 2;
    self.shoulderSlider.value = 200;
    
    self.rightUpperArmSlider.value = 300;
    self.rightLowerArmSlider.value = 210;
    
    self.leftUpperArmSlider.value = 150;
    self.leftLowerArmSlider.value = 150;
    
    self.leftUpperLegSlider.value = 160;
    self.leftLowerLegSlider.value = 200;
  
    self.rightUpperLegSlider.value = 190;
    self.rightLowerLegSlider.value = 180;
    
    SkeletonPoseDefinition *pose = [self getPoseFromView];
    [self.scene setPoseDefinition:pose];
}

- (IBAction)default4ButtonPressed:(id)sender
{
    self.eyesSlider.value = 0;
    self.shoulderSlider.value = 190;
    
    self.rightUpperArmSlider.value = 250;
    self.rightLowerArmSlider.value = 220;
    
    self.leftUpperArmSlider.value = 220;
    self.leftLowerArmSlider.value = 190;
    
    self.leftUpperLegSlider.value = 185;
    self.leftLowerLegSlider.value = 170;
    
    self.rightUpperLegSlider.value = 185;
    self.rightLowerLegSlider.value = 170;
    
    SkeletonPoseDefinition *pose = [self getPoseFromView];
    [self.scene setPoseDefinition:pose];
}

@end
