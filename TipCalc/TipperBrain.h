//
//  TipperBrain.h
//  TipCalc
//
//  Created by Paetur Petersen on 2/18/13.
//  Copyright (c) 2013 Paetur Petersen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TipperBrain : NSObject
- (double) CalculateTip:(double)TipP
                       :(double)Bill;
- (double) CalculateTotal:(double)TipP
                         :(double)Bill;

@end
