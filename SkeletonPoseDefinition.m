//
//  SkeletonPoseDefinition.m
//  Kasper
//
//  Created by Holger Hinzberg on 06.09.14.
//  Copyright (c) 2014 Holger Hinzberg. All rights reserved.
//

#import "SkeletonPoseDefinition.h"

@implementation SkeletonPoseDefinition

- (instancetype)init
{
    self = [super init];
    if (self)
    {
        self.eyesMovement = 0;
        self.shoulderRotation= 0;
        self.rightUpperArmRotation = 0;
        self.rightLowerArmRotation = 0;
        self.rightUpperLegRotation = 0;
        self.rightLowerLegRotation = 0;
        self.leftUpperArmRotation = 0;
        self.leftLowerArmRotation = 0;
        self.leftUpperLegRotation = 0;
        self.leftLowerLegRotation = 0;
    }
    return self;
}

@end
