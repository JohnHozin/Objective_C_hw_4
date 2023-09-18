//
//  main.m
//  Objective_C_hw_4
//
//  Created by умпет on 18.09.2023.
//  Copyright © 2023 Evgen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Robot.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Robot *robot = [[Robot alloc]init];
        [robot print];
        robot.path = ^MovementDirection(NSString * direction) {
            if ([direction isEqual: @"up"]) {
                return MovementDirectionUp;
            } else if ([direction isEqual: @"down"]) {
                return MovementDirectionDown;
            } else if ([direction isEqual: @"left"]) {
                return MovementDirectionLeft;
            } else if ([direction isEqual: @"right"]) {
                return MovementDirectionRight;
            } else return MovementDirectionWait;
        };
        [robot run:robot.path(@"down")];
        [robot run:robot.path(@"down")];
        [robot run:robot.path(@"left")];
        [robot run:robot.path(@"wait")];
        [robot run:robot.path(@"left")];
        [robot run:robot.path(@"up")];
        [robot run:robot.path(@"right")];
        
    }
    return 0;
}
