//
//  Robot.h
//  Objective_C_hw_4
//
//  Created by умпет on 18.09.2023.
//  Copyright © 2023 Evgen. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MovementDirection){
    MovementDirectionUp = 0,
    MovementDirectionDown = 1,
    MovementDirectionLeft = 2,
    MovementDirectionRight = 3,
    MovementDirectionWait = 4
};

NS_ASSUME_NONNULL_BEGIN

@interface Robot : NSObject
@property (nonatomic, readwrite) CGPoint coordinates;
@property (nonatomic, copy, nullable) MovementDirection (^path)(NSString*);
- (void) run: (MovementDirection) direction;
- (void) print;
@end

NS_ASSUME_NONNULL_END
