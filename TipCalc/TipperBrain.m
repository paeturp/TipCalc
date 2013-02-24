//
//  TipperBrain.m
//  TipCalc
//
//  Created by Paetur Petersen on 2/18/13.
//  Copyright (c) 2013 Paetur Petersen. All rights reserved.
//

#import "TipperBrain.h"

@implementation TipperBrain

- (double) CalculateTip:(double)TipP :(double)Bill
{
    return Bill*TipP/100;
}

- (double) CalculateTotal:(double)TipP :(double)Bill
{
    return Bill + (Bill * TipP/100);
}
@end
