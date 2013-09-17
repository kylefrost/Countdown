//
//  CountdownViewController.m
//  Countdown
//
//  Created by Kyle Frost on 9/7/13.
//  Copyright (c) 2013 Kyle Frost. All rights reserved.
//

#import "CountdownViewController.h"

@interface CountdownViewController ()

@end

@implementation CountdownViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

    
    destinationDate = [NSDate dateWithTimeIntervalSince1970:1379419200];
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(updateLabel) userInfo:nil repeats:YES];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)updateLabel {
    
    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
    int units = NSDayCalendarUnit | NSHourCalendarUnit | NSMinuteCalendarUnit | NSSecondCalendarUnit;
    NSDateComponents *components = [calendar components:units fromDate:[NSDate date] toDate:destinationDate options:0];
    [countdownLabel setText:[NSString stringWithFormat:@"%d%c:%d%c:%d%c:%d%c", [components day], 'd', [components hour], 'h', [components minute], 'm', [components second], 's']];
    
}

@end
