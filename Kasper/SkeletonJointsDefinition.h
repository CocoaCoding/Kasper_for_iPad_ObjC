//
//  SkeletonDefinition.h
//  Kasper
//
//  Created by Holger Hinzberg on 06.09.14.
//  Copyright (c) 2014 Holger Hinzberg. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SkeletonJointsDefinition : NSObject

@property (nonatomic, assign) CGPoint shoulder;
@property (nonatomic, assign) CGPoint head;
@property (nonatomic, assign) CGPoint eyes;
@property (nonatomic, assign) CGPoint rightUpperArm;
@property (nonatomic, assign) CGPoint rightLowerArm;
@property (nonatomic, assign) CGPoint rightUpperLeg;
@property (nonatomic, assign) CGPoint rightLowerLeg;
@property (nonatomic, assign) CGPoint leftUpperArm;
@property (nonatomic, assign) CGPoint leftLowerArm;
@property (nonatomic, assign) CGPoint leftUpperLeg;
@property (nonatomic, assign) CGPoint leftLowerLeg;

@end
