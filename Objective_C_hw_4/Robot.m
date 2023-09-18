//
//  Robot.m
//  Objective_C_hw_4
//
//  Created by умпет on 18.09.2023.
//  Copyright © 2023 Evgen. All rights reserved.
//

#import "Robot.h"

@implementation Robot
- (id)init {
    if (self = [super init]) {
        self.coordinates = CGPointMake(0, 0);
    }
    return self;
}
- (void)run:(MovementDirection)direction {
    if (direction == MovementDirectionUp) {
        _coordinates.y++;
    } else if (direction == MovementDirectionDown) {
        _coordinates.y--;
    } else if (direction == MovementDirectionLeft) {
        _coordinates.x--;
    } else if (direction == MovementDirectionRight) {
        _coordinates.x++;
    }
    [self print];
}
- (void)print {
    NSLog(@"%f, %f", _coordinates.x, _coordinates.y);
}

@end
