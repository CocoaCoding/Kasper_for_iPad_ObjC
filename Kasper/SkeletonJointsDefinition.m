//
//  SkeletonDefinition.m
//  Kasper
//
//  Created by Holger Hinzberg on 06.09.14.
//  Copyright (c) 2014 Holger Hinzberg. All rights reserved.
//

#import "SkeletonJointsDefinition.h"

@implementation SkeletonJointsDefinition

-(id)init
{
    self = [super init];
    if (self)
    {
        self.shoulder = CGPointMake(0, 0);
        self.head  = CGPointMake(0, 0);
        self.eyes  = CGPointMake(0, 0);
        self.rightUpperArm  = CGPointMake(0, 0);
        self.rightLowerArm = CGPointMake(0, 0);
        self.rightUpperLeg  = CGPointMake(0, 0);
        self.rightLowerLeg  = CGPointMake(0, 0);
        self.leftUpperArm = CGPointMake(0, 0);
        self.leftLowerArm = CGPointMake(0, 0);
        self.leftUpperLeg = CGPointMake(0, 0);
        self.leftLowerLeg = CGPointMake(0, 0);
    }
    return self;
}

@end
