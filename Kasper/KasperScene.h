//
//  KasperScene.h
//  Kasper
//
//  Created by Holger Hinzberg on 03.09.14.
//  Copyright (c) 2014 Holger Hinzberg. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>
@class SkeletonPoseDefinition;

@interface KasperScene : SKScene

- (void)setPoseDefinition:(SkeletonPoseDefinition *)pose;

@end
