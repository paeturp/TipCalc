//
//  ViewController.m
//  TipCalc
//
//  Created by Paetur Petersen on 1/28/13.
//  Copyright (c) 2013 Paetur Petersen. All rights reserved.
//

#import "ViewController.h"
#import "TipperBrain.h"

@interface ViewController ()
@property (nonatomic) BOOL userIs;
@property (nonatomic, strong) TipperBrain *Brain;
@end

@implementation ViewController

@synthesize Bill = _Bill;
@synthesize TipP = _TipP;
@synthesize TipD = _TipD;
@synthesize Total = _Total;
@synthesize userIs = _userIs;
@synthesize Brain = _Brain;

- (TipperBrain *)Brain
{
    if (!_Brain) _Brain = [[TipperBrain alloc]init];
    return _Brain;
}

- (IBAction)tipPressed
{
    self.TipD.text = [NSString stringWithFormat:@"%g", [self.Brain CalculateTip:[self.TipP.text doubleValue]:[self.Bill.text doubleValue]]];
    self.Total.text = [NSString stringWithFormat:@"%g", [self.Brain CalculateTotal:[self.TipP.text doubleValue]:[self.Bill.text doubleValue]]];
}

- (IBAction)digitPressed:(UIButton *)sender
{
    NSString *digit = [sender currentTitle];
    
    if (self.userIs)
    {
        self.Bill.text = [self.Bill.text stringByAppendingString:digit];
    }
    else
    {
        self.Bill.text = digit;
        self.userIs = YES;
    }
    [self tipPressed];
    NSLog(@"digit pressed = %@", digit);
}


- (IBAction)ClearPressed
{
    self.Total.text = 0;
    self.TipD.text = 0;
    self.Bill.text = @"0";
    self.userIs = NO;
}



- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
