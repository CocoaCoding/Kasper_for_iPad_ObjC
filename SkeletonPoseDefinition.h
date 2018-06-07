//
//  SkeletonPoseDefinition.h
//  Kasper
//
//  Created by Holger Hinzberg on 06.09.14.
//  Copyright (c) 2014 Holger Hinzberg. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SkeletonPoseDefinition : NSObject

@property (nonatomic, assign) double eyesMovement;
@property (nonatomic, assign) double shoulderRotation;
@property (nonatomic, assign) double rightUpperArmRotation;
@property (nonatomic, assign) double rightLowerArmRotation;
@property (nonatomic, assign) double rightUpperLegRotation;
@property (nonatomic, assign) double rightLowerLegRotation;
@property (nonatomic, assign) double leftUpperArmRotation;
@property (nonatomic, assign) double leftLowerArmRotation;
@property (nonatomic, assign) double leftUpperLegRotation;
@property (nonatomic, assign) double leftLowerLegRotation;

@end
