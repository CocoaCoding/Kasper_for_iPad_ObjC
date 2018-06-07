//
//  KasperScene.m
//  Kasper
//
//  Created by Holger Hinzberg on 03.09.14.
//  Copyright (c) 2014 Holger Hinzberg. All rights reserved.
//

#import "KasperScene.h"
#import "SkeletonJointsDefinition.h"
#import "SkeletonPoseDefinition.h"

@interface KasperScene()

@property (nonatomic, strong) SkeletonJointsDefinition *skeleton;
@property (nonatomic,strong) SKSpriteNode *torsoNode;
@property (nonatomic,strong) SKSpriteNode *shoulderNode;
@property (nonatomic,strong) SKSpriteNode *rightUpperArmNode;
@property (nonatomic,strong) SKSpriteNode *rightLowerArmNode;
@property (nonatomic,strong) SKSpriteNode *leftUpperArmNode;
@property (nonatomic,strong) SKSpriteNode *leftLowerArmNode;
@property (nonatomic,strong) SKSpriteNode *rightUpperLegNode;
@property (nonatomic,strong) SKSpriteNode *rightLowerLegNode;
@property (nonatomic,strong) SKSpriteNode *leftUpperLegNode;
@property (nonatomic,strong) SKSpriteNode *leftLowerLegNode;
@property (nonatomic,strong) SKSpriteNode *headNode;
@property (nonatomic,strong) SKSpriteNode *eyesNode;

@end

@implementation KasperScene

- (id)initWithSize:(CGSize)size
{
    if (self = [super initWithSize:size])
    {
        self.backgroundColor = [SKColor whiteColor];

        self.torsoNode =  [SKSpriteNode spriteNodeWithImageNamed:@"body"];
        self.shoulderNode =  [SKSpriteNode spriteNodeWithImageNamed:@"shoulder"];
        self.rightUpperArmNode =  [SKSpriteNode spriteNodeWithImageNamed:@"armJoint"];
        self.rightLowerArmNode =  [SKSpriteNode spriteNodeWithImageNamed:@"armJoint"];
        self.leftUpperArmNode =  [SKSpriteNode spriteNodeWithImageNamed:@"armJoint"];
        self.leftLowerArmNode =  [SKSpriteNode spriteNodeWithImageNamed:@"armJoint"];
        self.rightUpperLegNode =  [SKSpriteNode spriteNodeWithImageNamed:@"legjoint"];
        self.rightLowerLegNode =  [SKSpriteNode spriteNodeWithImageNamed:@"legjoint"];
        self.leftUpperLegNode =  [SKSpriteNode spriteNodeWithImageNamed:@"legjoint"];
        self.leftLowerLegNode =  [SKSpriteNode spriteNodeWithImageNamed:@"legjoint"];
        self.headNode =  [SKSpriteNode spriteNodeWithImageNamed:@"head"];
        self.eyesNode =  [SKSpriteNode spriteNodeWithImageNamed:@"eyes"];
     
        [self setupSkeleton];
        [self placeBodyParts];
    }
    return self;
}

- (void)setupSkeleton
{
    self.skeleton = [[SkeletonJointsDefinition alloc ] init];
    self.skeleton.shoulder = CGPointMake(0,+40);
    self.skeleton.head  = CGPointMake(0,95);
    self.skeleton.eyes  = CGPointMake(0,10);
    self.skeleton.rightUpperArm  = CGPointMake(40,0);
    self.skeleton.rightLowerArm = CGPointMake(0,-70);
    self.skeleton.rightUpperLeg  = CGPointMake(25,-50);
    self.skeleton.rightLowerLeg  = CGPointMake(0,- 70);
    self.skeleton.leftUpperArm = CGPointMake(-40,0);
    self.skeleton.leftLowerArm = CGPointMake(0,-70);
    self.skeleton.leftUpperLeg = CGPointMake(-25,-50);
    self.skeleton.leftLowerLeg = CGPointMake(0,- 70);
}

- (void)placeBodyParts
{

    self.torsoNode.position = CGPointMake(self.size.width /2, self.size.height /2);
    self.torsoNode.zPosition = 50;
    [self addChild:self.torsoNode];

    self.shoulderNode.position = self.skeleton.shoulder;
    self.shoulderNode.zPosition = -1;
    [self.torsoNode addChild:self.shoulderNode];
 
    // Beine
    self.rightUpperLegNode.position = self.skeleton.rightUpperLeg;
    self.rightUpperLegNode.zPosition = -1;
    [self.torsoNode addChild:self.rightUpperLegNode];
    
    self.rightLowerLegNode.position = self.skeleton.rightLowerLeg;
    self.rightLowerLegNode.zPosition = -1;
    [self.rightUpperLegNode addChild:self.rightLowerLegNode];

    self.leftUpperLegNode.position = self.skeleton.leftUpperLeg;
    self.leftUpperLegNode.zPosition = -1;
    [self.torsoNode addChild:self.leftUpperLegNode];
    
    self.leftLowerLegNode.position = self.skeleton.leftLowerLeg;
    self.leftLowerLegNode.zPosition = -1;
    [self.leftUpperLegNode addChild:self.leftLowerLegNode];

    // Arme
    self.rightUpperArmNode.position = self.skeleton.rightUpperArm;
    self.rightUpperArmNode.zPosition = 5;
    [self.shoulderNode addChild:self.rightUpperArmNode];
    
    self.rightLowerArmNode.position = self.skeleton.rightLowerArm;
    self.rightLowerArmNode.zPosition = 1;
    [self.rightUpperArmNode addChild:self.rightLowerArmNode];
    
    self.leftUpperArmNode.position = self.skeleton.leftUpperArm;
    self.leftUpperArmNode.zPosition = 5;
    [self.shoulderNode addChild:self.leftUpperArmNode];
    
    self.leftLowerArmNode.position = self.skeleton.leftLowerArm;
    self.leftLowerArmNode.zPosition = 1;
    [self.leftUpperArmNode addChild:self.leftLowerArmNode];
    
    // Kopf und Augen
    self.headNode.position = self.skeleton.head;
    self.headNode.zPosition = 1;
    [self.torsoNode addChild:self.headNode];
    
    self.eyesNode.position = self.skeleton.eyes;
    self.eyesNode.zPosition = 1;
    [self.headNode addChild:self.eyesNode];
}

- (void)setPoseDefinition:(SkeletonPoseDefinition *)pose
{
    self.shoulderNode.zRotation = pose.shoulderRotation * M_PI / 180;

    self.rightUpperArmNode.zRotation = pose.rightUpperArmRotation * M_PI / 180;
    self.rightLowerArmNode.zRotation = pose.rightLowerArmRotation * M_PI / 180;
    self.leftUpperArmNode.zRotation = pose.leftUpperArmRotation * M_PI / 180;
    self.leftLowerArmNode.zRotation = pose.leftLowerArmRotation * M_PI / 180;
    
    self.rightUpperLegNode.zRotation = pose.rightUpperLegRotation * M_PI / 180;
    self.rightLowerLegNode.zRotation = pose.rightLowerLegRotation * M_PI / 180;
    self.leftUpperLegNode.zRotation = pose.leftUpperLegRotation * M_PI / 180;
    self.leftLowerLegNode.zRotation = pose.leftLowerLegRotation * M_PI / 180;
    
    CGPoint pos = self.eyesNode.position;
    self.eyesNode.position = CGPointMake(pose.eyesMovement ,pos.y);
}

@end
